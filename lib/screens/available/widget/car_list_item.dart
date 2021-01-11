import 'package:rent_car/constants.dart';
import 'package:rent_car/model/car.dart';
import 'package:rent_car/screens/available/widget/car_infomation.dart';
import 'package:rent_car/screens/detail/car_detail_screen.dart';
import 'package:flutter/material.dart';

class CarListItem extends StatelessWidget {
  const CarListItem(
      this.index, {
        Key key,
      }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    Car car = carList[index];
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CarDetailScreen(car);
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Stack(
          children: [
            CarInfomation(car: car),
            Positioned(
              right: 40,
              child: Image.asset(
                car.image,
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
