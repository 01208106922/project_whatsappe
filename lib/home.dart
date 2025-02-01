import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF181818),
      appBar: AppBar(
        backgroundColor: Color(0xFF168C4B),
        toolbarHeight: 70,
        leading: Icon(Icons.arrow_back_ios_new,
          color: Colors.white,),
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset("assets/images/pic2.jpg",
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width:10),
            Text("John Safwat",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
              ),
            ),
          ],
        ),
        titleSpacing: 0,
        actions: [Icon(Icons.call,
          color: Colors.white,),
          SizedBox(width:10),
          Icon(Icons.video_camera_back_outlined,
            color: Colors.white,),
          SizedBox(width:10),
          Icon(Icons.more_vert,
            color: Colors.white,),
          SizedBox(width:10),
        ],
      ),
///////////////////////////////////////////////////////////////////////////////
      body:Stack(
          children:[Image.asset("assets/images/pic1.png",
                  width:double.infinity ,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  color: Colors.white10,
                ),
            Padding(
              padding: const EdgeInsets.only(left: 12,top: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20)
                  ),

                  color: Color(0xFF168C4B),
                ),
                padding: EdgeInsets.all(20),
                child: Text("Hello !",
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ) ,),
              ),
            ),

          Padding(
            padding: const EdgeInsets.only(left:300 ,top: 70),
            child: Container(
              decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20)
                          ),

                          color: Colors.grey,
              ),
              padding: EdgeInsets.all(20),
              child: Text("Hello !",
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),
              ),
            ),
          ),
            Container(
              decoration: BoxDecoration(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20)
      ),

      color: Color(0xFF168C4B),
              ),
              margin: EdgeInsets.only(left: 12,top: 150),
              padding: EdgeInsets.all(20),
              child: Text("Hey! Have you ever thought about how \n"
        "random moments can sometimes turn into \n"
        "the best memories? It’s like the universe \n"
        "loves to surprise us when we least expect it!",
      style:TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 16,
      ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20)
                ),

                color: Color(0xFF168C4B),
              ),
              margin: EdgeInsets.only(left: 12,top: 300),
              padding: EdgeInsets.all(12),
              child:Image.asset("assets/images/pic3.jpg",
              width: 300,
              height: 200,
                fit: BoxFit.cover,
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left:120 ,top: 550,bottom: 50),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20)
                  ),

                  color: Colors.grey,
                ),
                padding: EdgeInsets.all(20),
                child: Text("What a Great Content TP Learn \n Flutter",
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
      //////////////////////////////////////////////////////////////////////////////
        Padding(
          padding: const EdgeInsets.only(top:700,bottom: 10),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  border:Border.all(color: Color(0xff168C4B)),
                ),
                height: 60,
                width: 320,
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Icon(Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 30,),
                          ),

                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text("Type a Message ...",
                        style: TextStyle(
                            color: Colors.white,
                        fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Icon(Icons.send,
                          color: Colors.white,
                          size: 30,),
                      ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
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
        )
          ],
            ),
    );

  }
}
