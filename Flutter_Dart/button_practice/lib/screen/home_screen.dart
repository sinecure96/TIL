import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('버튼'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.black,
                  ),
                ),
                child: Text('ButtonStyle'),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.black,
                      shadowColor: Colors.green,
                      elevation: 10.0,
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30.0,
                      ),
                      padding: EdgeInsets.all(32.0),
                      side: BorderSide(
                        color: Colors.black,
                        width: 4.0,
                      )),
                  child: Text('elvButton')),
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text('oldButton')),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.brown,
                  ),
                  child: Text('textButton')),
            ],
          ),
        ));
  }
}
