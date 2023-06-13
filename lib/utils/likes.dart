import 'package:flutter/material.dart';

class HeartIcon extends StatefulWidget {
  const HeartIcon({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HeartIconState createState() => _HeartIconState();
}

class _HeartIconState extends State<HeartIcon> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
            ),
          ]),
      child: Align(
        alignment: Alignment.center,
        child: IconButton(
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite,
            color: isLiked
                ? Colors.redAccent
                : const Color.fromARGB(255, 73, 73, 73),
            size: 30,
          ),
          onPressed: toggleLike,
        ),
      ),
    );
  }
}
