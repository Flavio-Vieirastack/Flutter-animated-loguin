import 'package:flutter/material.dart';

class Animacao extends StatefulWidget {
  @override
  _AnimacaoState createState() => _AnimacaoState();
}

class _AnimacaoState extends State<Animacao> {
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          padding: EdgeInsets.all(20),
          width: _status ? 200 : 300,
          height: _status ? 300 : 200,
          color: _status ? Colors.white : Colors.purpleAccent,
          child: Image.asset("images/logo.png"),
          duration: Duration(
            seconds: 2
          ),
          curve: Curves.easeInToLinear,
        ),
        RaisedButton(
            child: Text("Alterar"),
            onPressed: () {
              setState(() {
                _status = !_status;
              });
            })
      ],
    );
  }
}
