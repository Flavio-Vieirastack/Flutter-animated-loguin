import 'package:flutter/material.dart';

class AnimacoesBasicas extends StatefulWidget {
  @override
  _AnimacoesBasicasState createState() => _AnimacoesBasicasState();
}

class _AnimacoesBasicasState extends State<AnimacoesBasicas> {
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Meu app"),
      ),
/*
    body: AnimatedContainer(
        duration: Duration(seconds: 1),
        color: Colors.green,
        padding: EdgeInsets.only(top: 20, bottom: 100),
        alignment: _status ? Alignment.bottomCenter : Alignment.topCenter,

        child: AnimatedOpacity(
          opacity: _status ? 1 : 0,
          duration: Duration(seconds: 1),
          child: Container(
          height: 50,
          child: Icon(Icons.airplanemode_active,
          size: 50,
          color: Colors.white,
          ),
        ),
          )
        ),
*/
/*
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        color: Colors.green,
        padding: EdgeInsets.all(10),
        height: _status ? 0 : 100,
        ),
*/

      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _status = !_status;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.linear,
            alignment: Alignment.center,
            width: _status ? 60 : 160,
            height: 60,
            
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: AnimatedOpacity(
                    opacity: _status ? 1 : 0,
                    duration: Duration(milliseconds: 50),
                    child: Icon(Icons.person_add, color: Colors.white,),
                    ),
                ),

                Align(
                  alignment: Alignment.center,
                  child: AnimatedOpacity(
                    opacity: _status ? 0 : 1,
                    duration: Duration(milliseconds: 50),
                    child: Text(
                      "Mensagem",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                      ),
                    ),
                )
              ],
            ),
            ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 6,
        child: Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            _status = !_status;
          });
        },
      ),
    );
  }
}
