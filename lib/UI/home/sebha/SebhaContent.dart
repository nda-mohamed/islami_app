import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaContent extends StatefulWidget {
  const SebhaContent({super.key});

  @override
  State<SebhaContent> createState() => _SebhaContentState();
}

class _SebhaContentState extends State<SebhaContent> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),

          const Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Tajawal',
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 25),

          GestureDetector(
            onTap: _incrementCounter,
            onLongPress: _resetCounter,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/Sebha.png',
                  width: 400,
                  height: 400,
                  fit: BoxFit.contain,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$_counter',
                      style: const TextStyle(
                        fontSize: 42,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "سُبْحَانَ اللَّه",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal',
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 20),

                    GestureDetector(
                      onTap: _resetCounter,
                      child: const Icon(
                        Icons.refresh,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
