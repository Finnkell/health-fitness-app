import 'package:flutter/material.dart';
import 'package:health_fitness_app/constants.dart';
import 'package:health_fitness_app/indicator.dart';

class PurchaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset('img3.png'),
              Positioned(
                top: 70,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(Icons.chevron_left, size: 50),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      ' Go Premium\n Get unlimited access', 
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 30,

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Indicator(true),
              Indicator(false),
              Indicator(false),
              Indicator(false),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomOptionButton(
            isActive: false, 
            color: 0xffffebf5, 
            text: '10.00 / Month'
          ),
          SizedBox(
            height: 20,
          ),
          CustomOptionButton(
            isActive: true, 
            color: 0xfffff1ef, 
            text: '56.00 / Yearly'
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {},
            color: orangeColor,
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 100,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              'Purchase',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomOptionButton extends StatelessWidget {

  final isActive, text, color;

  CustomOptionButton({this.isActive, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: MaterialButton(
        onPressed: () {},
        color: Color(color),
        minWidth: 100,
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isActive == true ? orangeColor : Colors.white,
              ),
              child: isActive == true ? 
              Center(
                child: Icon(
                  Icons.check, 
                  color: Colors.white,
                  size: 18,
                )
              ) : null,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text, 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Chip(
              backgroundColor: orangeColor,
              label: Text(
                'Free trial',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}