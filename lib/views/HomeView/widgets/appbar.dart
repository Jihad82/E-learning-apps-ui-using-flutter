import 'package:elearningapp/utils/colors.dart';
import 'package:flutter/material.dart';
Stack homeAppbar(Size size) {
  return Stack(
    children: [
      Container(
        padding: const EdgeInsets.only(
          top: 50, // Reduce top padding
          left: 15,
          right: 15,
          bottom: 10, // Reduce bottom padding
        ),
        height: size.height * .25, // Reduce the height of the app bar
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primaryColors,
              AppColors.secounderyColors,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,',
                  style: TextStyle(
                    fontSize: 22.0, // Reduce font size
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Good Morning',
                  style: TextStyle(
                    fontSize: 14.0, // Reduce font size
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    padding: const EdgeInsets.all(6), // Reduce padding
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.3),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.notifications, color: Colors.white),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      width: 8, // Reduce size
                      height: 8, // Reduce size
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Positioned(
        left: 20,
        right: 20,
        top: 120, // Adjust top position
        child: TextFormField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 12), // Adjust vertical padding
            hintText: 'Search Your Topics',
            hintStyle: const TextStyle(color: Colors.white),
            prefixIcon: const Icon(Icons.search, color: Colors.white),
            suffixIcon: IconButton(
              icon: const Icon(Icons.mic, color: Colors.white),
              onPressed: () {
                // Add functionality for voice command here
              },
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    ],
  );
}
