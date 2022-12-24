import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LohinPage extends StatefulWidget {
  const LohinPage({super.key});

  @override
  State<LohinPage> createState() => _LohinPageState();
}

class _LohinPageState extends State<LohinPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: used to remove or keep the red debug that showed in the screen
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: Icon(Icons.menu),
          title: Text("First App"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notification_add),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
        drawer: Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                //key: formKey => we use it to validate all the textformfield in the form
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      // textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    // TextFormField(
                    //   controller: emailController,
                    //   keyboardType: TextInputType.emailAddress,
                    //   decoration: InputDecoration(
                    //       prefixIcon: Icon(Icons.email),
                    //       border: OutlineInputBorder(),
                    //       labelText: 'Email Address'),

                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'This Filed is required';
                    //     }
                    //     return null;
                    //   },

                    //   // to be able to have the value of the field
                    //   // onFieldSubmitted: (value) {
                    //   //   print(value);
                    //   // },

                    //   // onChanged: (value) {
                    //   //   print(value);
                    //   // },
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    defaultTextFormField(
                      control: emailController,
                      lable: 'Email Address',
                      prefix: Icons.email,
                      type: TextInputType.emailAddress,
                      validate: (String value) {
                        if (value.isEmpty) {
                          return 'This Filed is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // defaultTextFormField(
                    //   control: emailController,
                    //   keyBoredDef: TextInputType.emailAddress,
                    //   decoration: InputDecoration(
                    //     prefixIcon: Icon(Icons.email),
                    //     labelText: 'Email Address',
                    //     border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(20)),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye),
                          border: OutlineInputBorder(),
                          labelText: 'Password'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This Filed is required';
                        }
                        return null;
                      },
                      // to be able to have the value of the field
                      // onFieldSubmitted: (value) {
                      //   print(value);
                      // },

                      // onChanged: (value) {
                      //   print(value);
                      // },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: defaultButton(
                        // isUpperCase: false,
                        text: "login",
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            print(emailController.text);
                            print(passwordController.text);
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont't have an account ?"),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "SignUp",
                            style: TextStyle(color: Colors.teal),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
