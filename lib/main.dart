import 'package:flutter/material.dart';

void main() {
  runApp(ProgramPage());
}

class ProgramPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ProgramPageState();
  }
}

class ProgramPageState extends State<ProgramPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Workout Planner'),
        ),
        body: new Center(
          child: new ProgramPageCycle(),
        )
      ),
    );
  }
}

class ProgramPageCycle extends StatelessWidget {

  final exerciseList = ['Bench', 'Squat', 'Deadlift'];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemCount: 7,
      itemBuilder: (context, i) {

        return new Column(
          children: <Widget>[
            new GestureDetector(

              onTap: () {
                Navigator.of(context).push(
                  new MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return new Scaffold(
                        appBar: AppBar(
                          title: Text("Exercises"),
                        ),

                        body: Center(
                          child: ListView.builder(
                            padding: EdgeInsets.all(16.0),
                            itemCount: 3,
                            itemBuilder: (context, j) {
                              return new Card(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    new ExpansionTile(
                                      leading: Icon(Icons.adb),
                                      title: Text(exerciseList[j]),

                                      children: <Widget>[
                                        Card(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: <Widget>[
                                              new ListTile(
                                                trailing: Icon(Icons.done_outline),
                                                title: Text('3 Reps at 100kg'),
                                              )
                                            ],
                                          ),
                                        ),
                                        Card(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: <Widget>[
                                              new ListTile(
                                                trailing: Icon(Icons.done_outline),
                                                title: Text('5 Reps at 80kg'),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    }
                  )
                );
              },

              child: new Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new ListTile(
                      leading: Icon(Icons.adb),
                      title: Text('Day: ' + (i+1).toString()),
                      trailing: Icon(Icons.done_outline),

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