import 'package:flutter/material.dart';

void main() {
  runApp(ExercisesPage());
}

class ExercisesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ExercisesPageState();
  }
}

class ExercisesPageState extends State<ExercisesPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Workout Planner'),
        ),
        body: new Center(
          child: new ExercisePageCycle(),
        )
      ),
    );
  }
}

class ExercisePageCycle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemCount: 7,
      itemBuilder: (context, i) {

        return new Column(
          children: <Widget>[
            new GestureDetector(

              child: new Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new ExpansionTile(
                      leading: Icon(Icons.adb),
                      title: Text('Day: ' + (i+1).toString()),
                      trailing: Icon(Icons.done_outline),

                      children: <Widget>[

                        new Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              new ListTile(
                                title: Text("Expanded"),
                              )
                            ],
                          ),
                        )

                      ],

                    )
                  ],
                ),
              )
            )
          ]
        );
      }
    );
  }
}