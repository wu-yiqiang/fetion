import 'package:fetion/widgets/Avatar.dart' show Avatar;
import 'package:fetion/widgets/Texts.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});
  @override
  State<Message> createState() => _Message();
}

class _Message extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click, // 设置为点击光标
      child: GestureDetector(
        onTap: () {
          print("ss萨达萨达");
        },
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 194, 194, 194),
          borderRadius: const BorderRadius.all(Radius.circular(3)),
        ),
        child: Row(
          spacing: 10,
          children: [
            Avatar(size: 30, image: "assets/images/user.jpg"),
            Expanded(
              child: Column(
                children: [
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Expanded(
                          child: Texts(text: 'Sutter111111111111111111'),
                        ),
                      Column(
                        children: [
                          Texts(
                            text: '2011/09/10',
                            fontSize: 10,
                            fontWeight: FontWeight.w100,
                          ),
                          Texts(
                            text: '18:09:01',
                            fontSize: 10,
                            fontWeight: FontWeight.w100,
                          ),
                        ],
                        ),
                    ],
                  ),
                  Texts(text: "今晚吃啥11111111111111111111111111", fontSize: 12),
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
