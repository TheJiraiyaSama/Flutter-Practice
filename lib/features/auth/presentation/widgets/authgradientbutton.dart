import 'package:flutter/material.dart';
import 'package:practice/core/theme/apppallete.dart';

class Authgradientbutton extends StatelessWidget {
  final String buttonName;
  const Authgradientbutton({super.key,required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
           AppPallete.gradient1,
           AppPallete.gradient2, 
           AppPallete.gradient3],
           begin: Alignment.bottomLeft,
           end: Alignment.topRight,
           ),
           borderRadius: BorderRadius.circular(20)
      ), 
      child: ElevatedButton(
        onPressed: () {} ,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395,55),
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor
      ),
      child: Text(buttonName,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
      )
      ),
    );
  }
}