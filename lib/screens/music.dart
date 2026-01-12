import 'package:flutter/material.dart';
import 'package:neurocalm/widgets/screen_button.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  bool isPause = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Image.asset("assets/images/music-screen-vector.png"),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ScreenButton(icon: Icons.favorite_border_outlined),
                  ScreenButton(icon: Icons.download_outlined),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Focus Attention",
                    style: TextStyle(
                      fontSize: 34,
                      color: Color.fromRGBO(63, 65, 78, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "7 DAYS OF CALM",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(160, 163, 177, 1),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage("assets/icons/15-sec-backward.png"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(63, 65, 78, 1),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color.fromRGBO(186, 188, 198, 1),
                              width: 10,
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isPause = !isPause;
                              });
                            },
                            icon: Icon(
                              isPause ? Icons.pause : Icons.play_arrow,
                              color: Colors.white,
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage("assets/icons/15-sec-forward.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 2.0,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 6.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 12.0,
                      ),
                      activeTrackColor: Color(0xFF3E3F4B),
                      inactiveTrackColor: Color(0xFFD1D1D6),
                      thumbColor: Color(0xFF3E3F4B),
                    ),
                    child: Slider(
                      value: 50,
                      min: 0,
                      max: 100,
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
