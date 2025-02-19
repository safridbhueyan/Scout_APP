import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInfoContainer extends StatelessWidget {
  const CustomInfoContainer({
    super.key, required this.imagePath, required this.title, required this.onTap,
  });

  final String imagePath;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.r)
      ),
      elevation: 0,
      color: Color(0xFFF4F4F4),
      child: ListTile(
        onTap: onTap,
        leading:  ImageIcon(
                 AssetImage(imagePath),
                   size: 24.r,
                 ),
        title: Text(title,style: Theme.of(context).textTheme.bodyMedium,) ,
        trailing:  ImageIcon(AssetImage("assets/icons/arrow_right.png"),size: 24.r,),
      ),
    );
  }
}