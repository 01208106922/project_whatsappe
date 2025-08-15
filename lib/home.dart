import 'package:flutter/material.dart';

import 'message.dart';

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF181818),
        appBar: AppBar(
          backgroundColor: Color(0xFF168C4B),
          toolbarHeight: 70,
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          title: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(91),
                child: Image.asset(
                  "assets/images/pic2.jpg",
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "John Safwat",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ],
          ),
          titleSpacing: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call_rounded,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.videocam_outlined,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )),
          ],
        ),
        body: Stack(children: [
          Image.asset(
            "assets/images/pic1.png",
            width: MediaQuery.of(context).size.width,
            height: double.infinity,
            fit: BoxFit.cover,
            color: Colors.white10,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Message(
                  message: "Hello !",
                  image: "",
                  isSender: true,
                  isImage: false,
                ),
                Message(
                  message: "Hello !",
                  image: "",
                  isSender: false,
                  isImage: false,
                ),
                Message(
                  message: "Hey! Have you ever thought about how \n"
                      "random moments can sometimes turn \ninto "
                      "the best memories? It’s like the\nuniverse"
                      "loves to surprise us when we \nleast expect it!",
                  isSender: true,
                  image: "",
                  isImage: false,
                ),
                Message(
                  image: "assets/images/pic3.jpg",
                  message: "",
                  isSender: true,
                  isImage: true,
                ),
                Message(
                  message: "what a Great Content Tp learn \nFlutter",
                  image: "",
                  isSender: false,
                  isImage: false,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff168C4B),),
                              borderRadius: BorderRadius.circular(39)
                          ),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          suffixIcon:  IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          hintText: "Type a Message ...",
                          hintStyle: TextStyle(color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,)
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                        child:Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFF168C4B),
                            ),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.mic_none,
                              color: Colors.white,
                              size: 30,),
                            ),
                          ),
                        )
                    ),
                  ],
                ),

              ],
            ),
          )
        ]));
  }
}