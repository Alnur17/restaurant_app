import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData? icon; // Optional: icon or text
  final String? text;
  final Color? color;
  final double padding;
  final TextStyle? textStyle;
  final bool isExpanded; // Determines if the button expands horizontally
  final Image? image; // Optional image

  const CustomButton({
    super.key,
    required this.onTap,
    this.icon,
    this.text,
    this.color,
    this.padding = 16.0,
    this.textStyle,
    this.isExpanded = true,
    this.image, // Add image parameter
  }) : assert(icon != null || text != null || image != null,
  'Either icon, text, or image must be provided');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0), // Rounded corners
        ),
        padding: EdgeInsets.all(padding),
        width: isExpanded ? double.infinity : null, // Full width if expanded
        child: Row(
          mainAxisSize: MainAxisSize.min, // Use min to center the content
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null) ...[
              image!, // Display the image
              const SizedBox(width: 8),
            ] else if (icon != null) ...[
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(width: 8),
            ],
            if (text != null)
              Text(
                text!,
                style: textStyle ??
                    const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
