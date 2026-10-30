import 'package:flutter/material.dart';
import '../../services/pianocore.dart';

void whiteKeyDown(TapDownDetails i) {}
void whiteKeyUp([TapUpDetails? i]) {}
void blackKeyDown(TapDownDetails i) {}
void blackKeyUp([TapUpDetails? i]) {}

final Widget piano = SizedBox(
  height: 150,
  width: double.infinity,
  child: LayoutBuilder(
    builder: (context, constraints) {
      final double whiteWidth = constraints.maxWidth / 52;
      final double blackWidth = whiteWidth * 0.6;

      final List<Container> whiteKeys = [
        for (int i = 0; i < 52; i++)
          Container(
            width: whiteWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 0.5),
            ),
          ),
      ];

      List<GestureDetector> whiteNotes = [
        for (int i = 0; i < 52; i++) GestureDetector(
          onTapDown: whiteKeyDown,
          onTapUp: whiteKeyUp,
          child: whiteKeys[i],
        ),
      ];

      final List<Positioned> blackNotes = [
        for (int i = 0; i < 51; i++)
          if (const {0, 2, 3, 5, 6}.contains(
            i % 7,
          )) // Checks if the key has sharp or no | 0 = A and 7 = A
            Positioned(
              left:
                  (i + 1) * whiteWidth -
                  blackWidth / 2, // Positions the black key between white keys
              top: 0,
              width: blackWidth,
              height: 0.6 * constraints.maxHeight,
              child: GestureDetector(
                 onTapDown: blackKeyDown,
                 onTapUp: blackKeyUp,
                 onTapCancel: blackKeyUp,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
      ];

      return Stack(
        children: [
          Row(children: whiteNotes),
          ...blackNotes, // spread the backNotes here | ... is the spread opeator
        ],
      );
    },
  ),
);
