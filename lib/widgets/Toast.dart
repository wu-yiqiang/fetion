import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;

class InfoBarService {
  static final InfoBarService _instance = InfoBarService._internal();
  factory InfoBarService() => _instance;
  InfoBarService._internal();

  OverlayEntry? _overlayEntry;
  BuildContext? _context;

  void init(BuildContext context) {
    _context = context;
  }

  // 显示 InfoBar
  void show({
    required String title,
    required String content,
    InfoBarSeverity severity = InfoBarSeverity.info,
    Duration duration = const Duration(seconds: 4),
    Widget? action,
  }) {
    if (_context == null) return;

    // 移除之前的 InfoBar
    dismiss();

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: material.MediaQuery.of(context).padding.top + 10,
        left: 10,
        right: 10,
        child: InfoBar(
          title: Text(title),
          content: Text(content),
          severity: severity,
          action: action,
          onClose: dismiss,
        ),
      ),
    );

    Overlay.of(_context!).insert(_overlayEntry!);

    // 自动关闭
    if (duration != Duration.zero) {
      Future.delayed(duration, dismiss);
    }
  }

  // 快速显示方法
  void showInfo(String title, String content, {Duration? duration}) {
    show(
      title: title,
      content: content,
      severity: InfoBarSeverity.info,
      duration: duration ?? const Duration(seconds: 3),
    );
  }

  void showSuccess(String title, String content, {Duration? duration}) {
    show(
      title: title,
      content: content,
      severity: InfoBarSeverity.success,
      duration: duration ?? const Duration(seconds: 3),
    );
  }

  void showWarning(String title, String content, {Duration? duration}) {
    show(
      title: title,
      content: content,
      severity: InfoBarSeverity.warning,
      duration: duration ?? const Duration(seconds: 4),
    );
  }

  void showError(String title, String content, {Duration? duration}) {
    show(
      title: title,
      content: content,
      severity: InfoBarSeverity.error,
      duration: duration ?? const Duration(seconds: 5),
    );
  }

  // 隐藏 InfoBar
  void dismiss() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
