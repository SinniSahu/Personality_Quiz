import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String ans;

  Answer(this.selectHandler, this.ans);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blue, onPrimary: Colors.white, shadowColor: Colors.blue.shade800) ,
        onPressed: selectHandler, 
        child: Text(ans)),

        // RaisedButton(
        //     child: Text('Answer 1'),
        //     onPressed: null),

    );
  }
}