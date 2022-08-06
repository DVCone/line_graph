import 'package:flutter/material.dart';

class VisaCard extends StatefulWidget {
  const VisaCard({Key? key}) : super(key: key);

  @override
  State<VisaCard> createState() => _VisaCardState();
}

class _VisaCardState extends State<VisaCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: 240,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: const LinearGradient(
          colors: [
            Colors.purple,
            Colors.pink,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: RotatedBox(
        quarterTurns: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Jhon Doe",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
            Stack(
              children: [
                Row(
                  children: const [
                    Text(
                      "**** **** ****",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "1234",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
                const Positioned(
                  top: 13,
                  child: Text(
                    "08/25",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      "Total Balance",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      "\$ 5,500.50",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 28,
                  width: 50,
                  child: Text(
                    "visa".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
