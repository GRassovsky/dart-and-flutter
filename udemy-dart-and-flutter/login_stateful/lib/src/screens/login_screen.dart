import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget
{
    createState()
    {
        return LoginScreenState();
    }
}


class LoginScreenState extends State<LoginScreen>
{
    Widget build(context)
    {
        return Container(
            margin: EdgeInsets.all(20.0),
            child: Form(
                child: Column(
                    children: [
                        emailField(),
                        passwordField(),
                        submitButton(),
                    ],
                ),
            ),
        );
    }

    Widget emailField()
    {
        return TextFormField(
            // We don't need to create an instance of the class
            // because we are referencing a constant in the class
            keyboardType: TextInputType.emailAddress, 
            
            decoration: InputDecoration(
                labelText: 'Email Address:',
                hintText: 'you@example.com',
            ),
            
        );
    }

    Widget passwordField()
    {
        return TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Password:',
                hintText: 'password',
            ),
        );
    }

    Widget submitButton()
    {
        final ButtonStyle style = ElevatedButton.styleFrom( primary: Colors.red);
        return ElevatedButton(
            style: style,
            child: Text('Submit!'),
            onPressed: () { print("Submit button pressed!"); },
        );
    }
}