import 'package:Dawah/Animation/FadeAnimation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class DawahDetails extends StatefulWidget {
  final List<Dawah> data;
  final int index;
  DawahDetails(this.data, this.index);
  @override
  _DawahDetailsState createState() => _DawahDetailsState();
}

class _DawahDetailsState extends State<DawahDetails> {
//  Future question() async {
//    final String qes = widget.data[widget.index].q.toString();
//    return qes;
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.orange[900],
                Colors.orange[800],
                Colors.orange[400],
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                        1,
                        Text(
                          widget.data[widget.index].q,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    FadeAnimation(
                      1.4,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.data[widget.index].a,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.pop(context);
          });
        },
        child: Icon(Icons.keyboard_arrow_left),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
