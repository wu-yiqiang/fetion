import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});
  @override
  State<Message> createState() => _Message();
}

class _Message extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 194, 194, 194),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      child: Row(
        spacing: 10,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/user.jpg"),
          ),
          Expanded(
            child: Column(
              children: [
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sutter", style: TextStyle(fontSize: 14)),
                    Text('2011/09/10', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("今晚吃啥", style: TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
