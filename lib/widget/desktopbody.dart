import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'draggablefloatingaction_button.dart';
import 'outlinedbutton.dart';

class MyDesktopBody extends StatelessWidget {
   MyDesktopBody({Key? key}) : super(key: key);
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff1BACF4), Color(0xff19EEB5)],
  ).createShader(Rect.fromLTWH(27, 172, 244, 1));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        toolbarHeight: 72,
        backgroundColor: Color(0xff191919),
        title: Padding(
          padding: EdgeInsets.only(left: 50),
          child: Image.asset("assets/s.png",
            height: 30,
            width: 130,),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 22,right: 22,top: 15,bottom: 15),
            child: MyOutlinedButton(
                gradient: LinearGradient(colors: [ Color(0xff1BACF4),
                  Color(0xff19EEB5)]),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)

                        ))
                ),


                onPressed: (){

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.location_on,color: Colors.lightBlueAccent,),
                    Text("Mumbai",style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w500),)
                  ],
                )
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 15,bottom: 15,left: 40,right: 40),
            height: 20,
            width: 500,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0)
                ),
                suffixIcon: Icon(Icons.search_outlined,color: Colors.lightBlueAccent,),
                hintText: "Search product",
                hintStyle: GoogleFonts.montserrat(
                    color: Color(0xff646464),
                    fontWeight: FontWeight.w500),
                contentPadding: EdgeInsets.all(12),

                fillColor: Colors.white,
                filled: true
              ),


            ),
          ),


          Padding(
            padding: EdgeInsets.only(left: 22,right: 22,top: 15,bottom: 15),
            child: MyOutlinedButton(
              gradient: LinearGradient(colors: [ Color(0xff1BACF4),
                Color(0xff19EEB5)]),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)

                      ))
              ),


              onPressed: (){

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.shopping_cart,color: Colors.lightBlueAccent,),
                  Text("My Cart",style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w500),)
                ],
              )
            ),
          ),

            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(primary: Colors.transparent),
                child: Ink(
                  height: 40,
                  width: 160,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [ Color(0xff1BACF4),
                      Color(0xff19EEB5)]),
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(maxHeight: 36,maxWidth: 80),
                    child: Text("Login/SignUp",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600),),
                  ),


                ),),

          Padding(
              padding: EdgeInsets.only(left: 22,right: 40),
              child: Icon(Icons.menu,size: 38,))
        ],
      ),
      body:
      SingleChildScrollView(
        child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(40),
                    height: 300,
                    width: 1620,
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset("assets/blackfriday1.png",
                          height: 320,
                          width: 1300,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 16,bottom: 20),
                  //   child: Text('Select From Category',
                  //     style: GoogleFonts.montserrat(
                  //         color: Color(0xffDFDFDF),fontSize: 22,
                  //         fontWeight: FontWeight.w500),),
                  // ),

                  GridView.builder(
                    padding: EdgeInsets.only(left: 40,right: 40),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 6
                          ),
                      itemCount: 6,
                      itemBuilder: (context,index){
                        return GestureDetector(
                          onTap: ()=> print("consoles"),
                          child:  Container(
                            margin: EdgeInsets.all(30),
                              height: 80,
                              width:  80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  color: Color(0xff191919)
                              ),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("assets/gamepad.png",
                                    height: 39,
                                    width: 52,),
                                  Text("Consoles",
                                    style: GoogleFonts.montserrat(color: Color(0xffDFDFDF)),)
                                ],
                              )
                          ),
                        );
                      }),

                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left:60,top: 10,bottom: 10),
                        child: Text('Trending This Week',
                          style: GoogleFonts.montserrat(
                              color: Color(0xffDFDFDF),fontSize: 22,fontWeight: FontWeight.w500),),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                              ),
    child: Icon(Icons.arrow_left,color: Colors.white,)),


                      Container(
                        margin: EdgeInsets.only(right: 100),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: Icon(Icons.arrow_right,color: Colors.white,)),

                    ],

                  ),

                  SizedBox(
                    height: 330,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: 50,right: 50),
                        itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return  Container(
                            margin: EdgeInsets.all(14),
                            height: 160,
                            width: 230  ,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset("assets/ps.png",
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("PlayStation 5",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffFFFFFF)),),
                                    Text("1 day",style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff646464)))

                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(text: "Starts at\n",
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14,
                                                    color: Color(0xff646464)),),

                                              TextSpan(text: "₹ 500/Day",
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17,
                                                    color: Color(0xffFFFFFF)),),
                                            ]

                                        )),

                                    MyOutlinedButton(
                                      gradient: LinearGradient(colors: [ Color(0xff1BACF4),
                                        Color(0xff19EEB5)]),
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10)

                                              ))
                                      ),


                                      onPressed: (){

                                      },
                                      child: Text("Rent Now",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            foreground: Paint()..shader=linearGradient
                                        ),),
                                    ),

                                  ],
                                )

                              ],
                            ),
                          );
                        }),
                  ),

                ],
              ),

              DraggableFloatingActionButton(
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: ShapeDecoration(
                        shape: CircleBorder(),color: Colors.white),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset("assets/Ellipse 16.png",height: 60,),
                        Image.asset("assets/Vector (1).png",height: 40,)
                      ],
                    ),

                  ),
                  onPressed: (){},
                  initalOffset: const Offset(20, 340))
            ]
        ),
      ),



    );
  }
}
