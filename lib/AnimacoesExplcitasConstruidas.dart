import 'package:flutter/material.dart';

class AnimacoesExplcitasConstruidas extends StatefulWidget {
  @override
  _AnimacoesExplcitasConstruidasState createState() =>
      _AnimacoesExplcitasConstruidasState();
}

class _AnimacoesExplcitasConstruidasState
    extends State<AnimacoesExplcitasConstruidas>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  AnimationStatus _animationStatus;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 5), vsync: this)
          ..repeat()..addStatusListener((status) {
            _animationStatus = status;
          });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: 300,
            height: 400,
            child: RotationTransition(
                alignment: Alignment.center,
                child: Image.asset("images/logo.png"),
                turns: _animationController),
          ),
          RaisedButton(
              child: Text("pressione"),
              onPressed: () {
                
                if (_animationStatus == AnimationStatus.dismissed) {

                  _animationController.repeat();

                } else {

                  _animationController.reverse();

                }
              })
        ],
      ),
    );
  }
}
