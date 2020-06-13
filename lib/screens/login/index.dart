import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rife/widgets/app_name/index.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        color: Theme.of(context).primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Image.asset('assets/images/covid@2x.png', width: 250,),
            ),
            const SizedBox(height: 100,),
            _buildBanner(),
            const SizedBox(height: 30,),
            _buildLoginButton()
          ],
        ),
      ),
    );
  }

  Widget _buildBanner() {
    return Stack(
      alignment: Alignment.topCenter,
      children: const <Widget>[
        Text('Welcome to', style: TextStyle(fontSize: 18)),
        WidgetStrokedText(text: 'RIFE', fontSize: 96,)
      ],
    );
  }

  Widget _buildLoginButton() {
    return RaisedButton(
      onPressed: () {},
      elevation: 1,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(FontAwesomeIcons.twitter, color: Colors.black,),
          const SizedBox(width: 30,),
          const Text('Sign in with Twitter', style: TextStyle(fontSize: 16))
        ],
      ),
    );
  }
}
