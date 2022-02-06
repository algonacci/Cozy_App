import 'package:cozy_app/model/city.dart';
import 'package:cozy_app/model/space.dart';
import 'package:cozy_app/model/tips.dart';
import 'package:cozy_app/theme.dart';
import 'package:cozy_app/widgets/bottom_navbar_item.dart';
import 'package:cozy_app/widgets/city_card.dart';
import 'package:cozy_app/widgets/space_card.dart';
import 'package:cozy_app/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          // NOTE: Title/Header
          children: [
            SizedBox(height: edge),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
            // Note: Popular Cities
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 24),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/city1.png',
                    ),
                  ),
                  SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'assets/city2.png',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/city3.png',
                    ),
                  ),
                  SizedBox(width: 24),
                ],
              ),
            ),
            SizedBox(height: 30),
            // NOTE: Recommended Space
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Kuretakeso Hot',
                      imageUrl: 'assets/space1.png',
                      price: 52,
                      city: 'Bandung',
                      country: 'Germany',
                      rating: 4,
                    ),
                  ),
                  SizedBox(height: 30),
                  SpaceCard(
                    Space(
                      id: 2,
                      name: 'Roemah Nenek',
                      imageUrl: 'assets/space2.png',
                      price: 11,
                      city: 'Seattle',
                      country: 'USA',
                      rating: 5,
                    ),
                  ),
                  SizedBox(height: 30),
                  SpaceCard(
                    Space(
                      id: 3,
                      name: 'Darrling How',
                      imageUrl: 'assets/space3.png',
                      price: 20,
                      city: 'Jakarta',
                      country: 'Indonesia',
                      rating: 4,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // NOTE: TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                        id: 1,
                        title: 'City Guidelines',
                        imageUrl: 'assets/tips1.png',
                        updatedAt: '20 Apr'),
                  ),
                  SizedBox(height: 20),
                  TipsCard(
                    Tips(
                        id: 2,
                        title: 'Jakarta Fairship',
                        imageUrl: 'assets/tips2.png',
                        updatedAt: '11 Dec'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80 + edge),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_email.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
