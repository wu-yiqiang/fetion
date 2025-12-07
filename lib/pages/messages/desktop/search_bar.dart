import 'package:fetion/common/const.dart';
import 'package:flutter/material.dart';

class SearchsBar extends StatefulWidget {
  const SearchsBar({super.key});
  @override
  State<SearchsBar> createState() => _SearchsBar();
}

class _SearchsBar extends State<SearchsBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 14, right: 14, bottom: 14),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: white10 )),
        // color: Colors.amber
      ),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 10,
        children: [
          Expanded(child: TextField(
            keyboardType: TextInputType.text,
            // onChanged: (value) {
            //   loginController.setLoginForm('password', value);
            // },
            decoration: InputDecoration(
              hintText: "search",
              floatingLabelStyle: TextStyle(color: Colors.blueAccent),
              isDense: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
              ),
            ),
          ),),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
