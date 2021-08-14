import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({@required this.no, @required this.theme});

  final int no;
  final bool theme;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool light = theme;

    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(csIMage(no)),
            fit: BoxFit.fill,
          )),
        ),
        Positioned(
            top: 10,
            left: 10,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: light ? Colors.black : Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ))
      ],
    );
  }
}

String csIMage(int no) {
  if (no == 1) {
    return 'assets/ZFE.png';
  } else if (no == 2) {
    return 'assets/Z.jpg';
  }

  return 'assets/RWQDCX.jpg';
}
