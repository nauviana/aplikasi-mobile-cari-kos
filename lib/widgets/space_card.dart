import 'package:bwa_cozy/models/city.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';

class SpaceCard extends StatelessWidget{
  // @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 130,
          height: 110,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/sapce1.png',
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                      )
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/icon-star.png',
                      width: 22,
                      height: 22,
                    ),
                  ),
                ),

              )
            ],
          ),

        )
      ]

    );
  }
}