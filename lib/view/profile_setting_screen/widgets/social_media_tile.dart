import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaTile extends StatelessWidget {
   const SocialMediaTile({
    super.key, required this.imagePath, required this.title, required this.onTap,
  });

  final String imagePath;
  final String title;
  final  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
      ),
      elevation: 0,
      color: Color(0xFFF4F4F4),
      child: ListTile(
        onTap: onTap,
        leading:  ImageIcon(
          AssetImage(imagePath),
          size: 24.r,
        ),
        title: Text(title,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.w400,
          color: Color(0xFF4B5155)
        ),) ,
      ),
    );
  }
}