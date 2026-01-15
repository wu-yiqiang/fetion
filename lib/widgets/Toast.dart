import 'package:fluent_ui/fluent_ui.dart';

class OverlayMessage {
  static void show({
    required BuildContext context,
    required String message,
    InfoBarSeverity severity = InfoBarSeverity.info,
    Duration duration = const Duration(seconds: 2),
  }) {
    final overlay = Overlay.of(context)!;
    late OverlayEntry entry;

    entry = OverlayEntry(
      builder: (context) {
        return _AnimatedInfoBarOverlay(
          message: message,
          severity: severity,
          duration: duration,
          onRemove: () {
            if (entry.mounted) entry.remove();
          },
        );
      },
    );

    overlay.insert(entry);
  }
}

// 封装整个 Overlay 条目（推荐做法）
class _AnimatedInfoBarOverlay extends StatefulWidget {
  final String message;
  final InfoBarSeverity severity;
  final Duration duration;
  final VoidCallback onRemove;

  const _AnimatedInfoBarOverlay({
    required this.message,
    required this.severity,
    required this.duration,
    required this.onRemove,
  });

  @override
  State<_AnimatedInfoBarOverlay> createState() =>
      _AnimatedInfoBarOverlayState();
}

class _AnimatedInfoBarOverlayState extends State<_AnimatedInfoBarOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<Offset> _offset;

  @override
  void initState() {
    super.initState();

    // 初始化动画
    _controller = AnimationController(
      duration: const Duration(milliseconds: 250),
      reverseDuration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _opacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    _offset = Tween<Offset>(
      begin: const Offset(0, -0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    // 播放进入动画
    _controller.forward();

    // 启动自动消失计时器
    Future.delayed(widget.duration, _startExit);
  }

  void _startExit() {
    if (!_controller.isAnimating && _controller.value > 0) {
      _controller.reverse().then((_) {
        if (mounted) widget.onRemove(); // 确保在动画结束后移除
      });
    }
  }

  void _handleDismiss() {
    _startExit();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: IntrinsicWidth(
            child: SlideTransition(
              position: _offset,
              child: FadeTransition(
                opacity: _opacity,
                child: InfoBar(
                  severity: widget.severity,
                  title: Text(widget.message),
                  // actions: [
                  //   IconButton(
                  //     icon: Icon(FluentIcons.dismiss),
                  //     onPressed: _handleDismiss,
                  //   ),
                  // ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
