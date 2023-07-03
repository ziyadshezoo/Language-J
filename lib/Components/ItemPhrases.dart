import 'package:flutter/material.dart';
import '/Models/phraseModel.dart';
import 'package:audioplayers/audioplayers.dart';

class Items extends StatelessWidget {
  const Items({super.key, required this.ph});
  final phr ph;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: const Color.fromARGB(255, 255, 203, 203),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ph.eeng,
                    style:
                        const TextStyle(fontSize: 18, color: Color(0xff213555)),
                  ),
                  Text(ph.jap,
                      style: const TextStyle(
                          fontSize: 18, color: Color(0xff213555)))
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
                onPressed: () async {
                  try {
                    final player = AudioPlayer();
                    player.play(AssetSource(ph.sound));
                  } catch (e) {
                    print(e);
                  }
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: Color(0xff213555),
                ))
          ],
        ));
  }
}
