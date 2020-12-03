import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Color backgroundColor;

  CategoryItem(this.backgroundColor, this.size, this.icon, this.padding,
      this.margin, this.name,
      {this.iconColor = Colors.white});

  final double size;
  final IconData icon;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Color iconColor;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: backgroundColor,
            // borderRadius: BorderRadius.circular(size),
          ),
          padding: padding,
          margin: margin,
          child: Icon(icon, color: iconColor),
        ),
        SizedBox(height: 3,),
        Text(
          name,
          style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
