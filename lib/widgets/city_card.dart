import 'package:cozy_app/model/city.dart';
import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  CityCard(this.city);

  final City city;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 200,
        width: 120,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(36),
                              )),
                          child: Center(
                            child: Image.asset(
                              'assets/icon_star.png',
                              width: 22,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                city.name,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
