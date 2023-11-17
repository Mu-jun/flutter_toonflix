import 'package:flutter/material.dart';

class CurrentCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isIverted;
  final double index;

  final double offsetY = -45;
  final Color blackColor = const Color(0xFF1F2123);

  const CurrentCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    this.isIverted = false,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, index * offsetY),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: ShapeDecoration(
          color: isIverted ? Colors.white : blackColor,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 25, 0, 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: isIverted ? blackColor : Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isIverted ? blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        code,
                        style: TextStyle(
                          color: isIverted
                              ? blackColor
                              : Colors.white.withOpacity(0.7),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 2,
                child: Transform.translate(
                  offset: const Offset(-20, 20),
                  child: Icon(
                    icon,
                    size: 80,
                    color: isIverted ? blackColor : Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
