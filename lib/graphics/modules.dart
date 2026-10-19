import 'package:flutter/material.dart';

final Container controller = Container( // Audio Controls
  color: Colors.blue,
  height:100,
  width: double.infinity,
  padding: const EdgeInsets.all(8),
  margin: const EdgeInsets.all(4),
  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: (){},
            icon:const Icon(Icons.skip_previous)
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.replay_10),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow),
            iconSize: 36,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.pause),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.skip_next),
          ),
        ],
      ), // playback buttons
      Row(
        children: [
          const Text('00:00'),
          const SizedBox(width: 12),
          const Expanded(
            child: LinearProgressIndicator(
              value: 0.0,
              minHeight: 5,
            ),
          ),
          const SizedBox(width: 12),
          const Text('00:00'),
      ],), // time bar  
    ],
  ),
);

final Expanded musicDisplay = Expanded(
  child: Container(
    color: Colors.green,
    height: double.infinity,
    width: double.infinity,
  ) // Piano
);

final Container piano = Container(
  color: Colors.red,
  height:100,
  width: double.infinity,
  child: Stack()
); //Sheet Music and Piano Roll

