import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Simple Login Page'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 150, left: 50, right: 50, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'email',
                  hintText: "Enter Your Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  prefixIconColor: Colors.brown),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: "Apply password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                  prefixIconColor: Colors.brown),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Confirm pass',
                  hintText: "Again confirm Your Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  prefixIconColor: Colors.brown),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  labelText: 'Phone Number',
                  hintText: "Enter personal contact",
                  prefixIcon: Icon(Icons.contact_phone),
                  border: OutlineInputBorder(),
                  prefixIconColor: Colors.brown),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: MaterialButton(
                onPressed: () {},
                minWidth: double.infinity,
                child: Text('Login'),
                color: Colors.teal,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.green,
      //   child: Container(
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Icon(
      //           Icons.done,
      //           color: Colors.white,
      //           size: 20,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
