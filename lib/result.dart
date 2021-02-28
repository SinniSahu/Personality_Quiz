import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    // var yourScore = resultScore;
    // return yourScore;

    var yourResult = ' You are amazing!!';
    if(resultScore > 24)
      return yourResult;
    else if(resultScore <= 24 && resultScore >18)
      yourResult = 'You take life positively!!';
    else if(resultScore <= 18 && resultScore >12)
      yourResult = 'You are good!!, Keep improving';
    else 
      yourResult = 'You are negetive, \n Everything sucks!!';

    return yourResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child :
         Column(
          children: <Widget>[
        Text(
          'Quiz completed !! \n $resultPhrase',
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
        // FlatButton(onPressed: null, child: null)
        TextButton(
          onPressed: resetHandler, 
          child: Text('Restart the game'),
          style: TextButton.styleFrom(primary: Colors.indigo[900],),
          )
          ],
      ),
    ); 
  }
}