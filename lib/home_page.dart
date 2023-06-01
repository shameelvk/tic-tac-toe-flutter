import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tictactoe/game_button.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late List<GameButton> buttonlist;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buttonlist = doinit();
  }

  List<GameButton> doinit() {
    var gamebuttons = <GameButton>[
      GameButton(id: 1),
      GameButton(id: 2),
      GameButton(id: 3),
      GameButton(id: 4),
      GameButton(id: 5),
      GameButton(id: 6),
      GameButton(id: 7),
      GameButton(id: 8),
      GameButton(id: 9)
    ];
    return gamebuttons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tic tac toe"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xfff6921e), Color(0xff03921a)],
          ),
        ),
        child: GridView.builder(
          itemCount: buttonlist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
              crossAxisSpacing: 6.0,
              mainAxisSpacing: 9.0),
          itemBuilder: (context, index) => SizedBox(
            height: 100,
            width: 100,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(buttonlist[index].text,
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttonlist[index].bg,
                    disabledBackgroundColor: buttonlist[index].bg),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
