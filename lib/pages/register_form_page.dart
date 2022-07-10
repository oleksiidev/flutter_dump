import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterFormPage extends StatefulWidget {
  const RegisterFormPage({Key? key}) : super(key: key);

  @override
  State<RegisterFormPage> createState() => _RegisterFormPageState();
}

class _RegisterFormPageState extends State<RegisterFormPage> {
  bool _hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Form'),
        centerTitle: true,
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Full Name *',
                hintText: 'What do people call you?',
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLength: 11,
              decoration: InputDecoration(
                labelText: "Phone Number *",
                hintText: 'Where can we reach you? ',
                helperText: 'Phone format: (XXX)XXXX-XXX',
                prefixIcon: Icon(Icons.call),
                suffixIcon: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ),
              ),
              keyboardType: TextInputType.phone, //input numbers
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ], //filter input just a numbers
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email Address ",
                hintText: 'Enter a email address',
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress, //add to keyboard - @
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Life Story ",
                hintText: 'Telll us about your self',
                helperText: 'Keep it short, this is just a demo',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: _hidePass, // hide information on  form
              maxLength: 9,
              decoration: InputDecoration(
                labelText: "Password *",
                hintText: 'Enter the password',
                suffixIcon: IconButton(
                  icon:
                      Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _hidePass = !_hidePass;
                    });
                  },
                ),
                icon: Icon(Icons.security),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: _hidePass,
              maxLength: 9,
              decoration: InputDecoration(
                labelText: "Confirm Password * ",
                hintText: 'Confirm the password',
                icon: Icon(Icons.border_color),
              ),
            ),
            SizedBox(height: 15),
            RaisedButton(
              onPressed: () {},
              color: Colors.green,
              child: Text(
                'Submit form',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
