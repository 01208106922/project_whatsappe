import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  String message;
  String image;
  bool isImage;
  bool isSender;
  Color senderColor = Color(0xFF168C4B);
  Color receiveColor = Color(0xff232D36);
  Message(
      {super.key,
      required this.message,
      required this.image,
      required this.isSender,
      required this.isImage});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: isSender ? TextDirection.ltr : TextDirection.rtl,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: isSender ? Radius.circular(20) : Radius.circular(0),
                topLeft: isSender ? Radius.circular(0) : Radius.circular(20),
              ),
              color: isSender ? senderColor : receiveColor,
            ),
            padding: EdgeInsets.all(20),
            child: isImage
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      "assets/images/pic3.jpg",
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  )
                : Text(
                    message,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
