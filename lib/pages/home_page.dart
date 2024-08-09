import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/models/city.dart';
import '../widgets/space_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge
          ),

          child: ListView(
              children: [
                //  NOTE: HEADER
                Padding(
                  padding: EdgeInsets.only(
                    left: edge
                  ),
                  child: Text('Explore Now',
                  style: blackTextStyle.copyWith(
                      fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                    padding: EdgeInsets.only(left: edge),
                  child: Text('Mencari kosan yang cozy',
                    style: greyTextStyle.copyWith(
                      fontSize: 16
                    ),
                  ),
                ),
                SizedBox(height: 30,
                ),

                // NOTE: POPULAR CITIES
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text('Popular Cities',
                    style: regulerTextStyle.copyWith(
                        fontSize: 16
                    ),
                  ),
                ),
                SizedBox(height: 16,
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      CityCard(
                        city: City(
                          id: 1,
                          name: 'Jakarta',
                          imageUrl: 'assets/images/city1.png',
                          isFavorite: false,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CityCard(
                        city: City(
                          id: 2,
                          name: 'Bandung',
                          imageUrl: 'assets/images/city2.png',
                          isFavorite: true,

                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CityCard(
                        city: City(
                          id: 3,
                          name: 'Surabaya',
                          imageUrl: 'assets/images/city3.png',
                          isFavorite: false,
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      )

                    ],

                  ),
                ),
                //NOTE : RECOMENDED SPACE
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Recomended Spaces',
                    style: regulerTextStyle.copyWith(
                        fontSize: 16
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    SpaceCard(),
                  ],
                )





              ],
            ),
        )
      ),
    );
  }
}