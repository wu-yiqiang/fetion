import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/Avatar.dart' show Avatar;
import 'package:fetion/widgets/Texts.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});
  @override
  State<Message> createState() => _Message();
}

class _Message extends State<Message> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: GestureDetector(
        onTap: () {
          print("ss萨达萨达");
        },
        child: Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            // color: const Color.fromARGB(255, 232, 237, 251),
            color: _hover ? Colors.grey.withOpacity(0.1) : Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          child: Row(
            spacing: 10,
            children: [
              Avatar(size: 30, image: DefaultAvatar),
              Expanded(
                child: Column(
                  children: [
                    Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Texts(
                            text: 'Sutter111111111111111111',
                            color: black33,
                          ),
                        ),
                        Column(
                          children: [
                            Texts(
                              text: '2011/09/10',
                              fontSize: 10,
                              color: black6,
                            ),
                            Texts(
                              text: '18:09:01',
                              fontSize: 10,
                              color: black6,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Texts(
                      text: "今晚吃啥11111111111111111111111111",
                      fontSize: 12,
                      color: black6,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
