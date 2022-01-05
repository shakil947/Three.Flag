import 'package:flutter/material.dart';
import 'package:three_flag/components/black_sq.dart';
import 'package:three_flag/components/green_sq.dart';
import 'package:three_flag/components/red_cir.dart';
import 'package:three_flag/components/red_sq.dart';
import 'package:three_flag/components/white_sq.dart';
import 'package:three_flag/components/yellow_sq.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "Three Flags",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          40.0,
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  "1.Germany Flag",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                BlackSQ(),
                RedSQ(),
                Yellow(),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "2.Bangladesh Flag",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [Center(child: GreenSQ()), Center(child: RedCIR())],
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "3.Japan Flag",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [Center(child: WhiteSQ()), Center(child: RedCIR())],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
