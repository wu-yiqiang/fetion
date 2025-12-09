import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  var showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                  width: 120,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 80, bottom: 20),
                child: Column(
                  spacing: 14,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      // onChanged: (value) {
                      //   loginController.setLoginForm('password', value);
                      // },
                      decoration: InputDecoration(
                        labelText: "password",
                        hintText: "password",
                        floatingLabelStyle: TextStyle(color: Colors.blueAccent),
                        prefixIcon: Icon(Icons.lock),
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 1.0,
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 16,
                          ),
                          onPressed: () {
                            setState(() {
                              this.showPassword = !this.showPassword;
                            });
                          },
                        ),
                      ),
                      obscureText: !showPassword,
                    ),
                  ],
                ),
              ),
              Container(
                width: 320,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  child: const Text("Unlock"),
                  onPressed: () {
                    eventBus.emit(Events.NAVIGATE.name, routerMap['HOME']);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
