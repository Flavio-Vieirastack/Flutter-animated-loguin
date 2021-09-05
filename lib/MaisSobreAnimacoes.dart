import 'package:flutter/material.dart';

class MaisSobreAnimacoes extends StatefulWidget {
  @override
  _MaisSobreAnimacoesState createState() => _MaisSobreAnimacoesState();
}

class _MaisSobreAnimacoesState extends State<MaisSobreAnimacoes>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    _animation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(60, 0)
      ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.repeat();

    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: AnimatedBuilder(
        animation: _animation,

        child: Stack(
          children: [
            Positioned(
              width: 180,
              height: 180,
              top: 0,
              left: 0,
              child: Image.asset("images/logo.png"),
              )
          ],
        ),
        builder: (context, widget) {

          return Transform.translate(
            offset: _animation.value,
            child: widget,
          );

        },
      ),
    );
  }
}
