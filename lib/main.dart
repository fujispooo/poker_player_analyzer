import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen[50], // 背景色を設定
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              OptionsSection(),
              PlaySection(),
              AdSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class OptionsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        OptionButton(maxNumber: 6, isActive: false),
        OptionButton(maxNumber: 9, isActive: true), // アクティブなボタン
        OptionButton(maxNumber: 10, isActive: false),
      ],
    );
  }
}

class OptionButton extends StatelessWidget {
  final int maxNumber;
  final bool isActive;

  OptionButton({required this.maxNumber, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isActive ? Colors.green : Colors.green[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        ),
        onPressed: () {
          // ここにボタンを押した時の処理を追加します
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[800],
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey[400],
                child: Text(
                  '$maxNumber',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Spacer(),
            Text('MAX', style: TextStyle(color: Colors.black)),
            Spacer(),
            Icon(Icons.arrow_forward_ios, color: Colors.black),
          ],
        ),
      ),
    );
  }
}

class PlaySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'You can play by 1 times.',
          style: TextStyle(fontSize: 16.0),
        ),
        Text(
          '* You can increase this count by watching a rewarded ad.',
          style: TextStyle(fontSize: 14.0, color: Colors.grey),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            // スタートボタンの処理をここに追加します
          },
          child: Text(
            'start',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ],
    );
  }
}

class AdSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.green,
          padding: EdgeInsets.symmetric(vertical: 10.0),
        ),
        onPressed: () {
          // 広告ボタンの処理をここに追加します
        },
        child: Text(
          'Watch Rewarded Ads',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
