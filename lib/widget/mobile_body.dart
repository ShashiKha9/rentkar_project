import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentkar_project/screens/cartscreen_page.dart';
import 'cartlist.dart';
import 'draggablefloatingaction_button.dart';
import 'outlinedbutton.dart';
class MyMobileBody extends StatefulWidget{
  MyMobileBodyState createState()=> MyMobileBodyState();
}
List<Cart>mobileList=[];

class MyMobileBodyState extends State<MyMobileBody> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff1BACF4), Color(0xff19EEB5)],
  ).createShader(Rect.fromLTWH(27, 172, 244, 1));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Color(0xff191919),
        title: Image.asset("assets/s.png",
          height: 30,
          width: 100,),
        actions: [

          Icon(Icons.search_outlined),
          Padding(
              padding: EdgeInsets.only(left: 20.77,right: 30),
              child: IconButton(onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>CartScreenPage()));
              }, icon: Badge(
                position: BadgePosition(top: -16,end: -11),
                badgeContent: Text(mobileList.length.toString(),
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                badgeColor: Colors.lightBlueAccent,
                child: Icon(Icons.shopping_cart_outlined),
              )))
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
                    padding: EdgeInsets.only(bottom: 20),
                    margin: EdgeInsets.all(20),
                    height: 180,
                    width: 511,
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset("assets/blackfriday1.png",
                          height: 320,
                          width: 515,
                          fit: BoxFit.fill,
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17,bottom: 20),
                    child: Text('Select From Category',
                      style: GoogleFonts.montserrat(
                          color: Color(0xffDFDFDF),fontSize: 22,
                          fontWeight: FontWeight.w500),),
                  ),

                  GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3
                         ),
                      itemCount: 6,
                      itemBuilder: (context,index){
                        if(index==5){
                          return GestureDetector(
                            onTap: ()=> print("show all"),
                            child:  Container(
                                margin: EdgeInsets.all(14),
                                height: double.infinity,
                                width:  double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.0),
                                    color: Color(0xff191919)
                                ),
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset("assets/showall.png",
                                      height: 39,
                                      width: 52,),
                                    Text("Show All",
                                      style: GoogleFonts.montserrat(color: Color(0xffDFDFDF)),)
                                  ],
                                )
                            ),
                          );

                        }
                        return GestureDetector(
                          onTap: ()=> print("consoles"),
                          child:  Container(
                              margin: EdgeInsets.all(14),
                              height: double.infinity,
                              width:  double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.0),
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

                  Padding(
                    padding: EdgeInsets.only(left: 16,top: 10,bottom: 10),
                    child: Text('Trending This Week',
                      style: GoogleFonts.montserrat(
                          color: Color(0xffDFDFDF),fontSize: 22,fontWeight: FontWeight.w500),),
                  ),

                  SizedBox(
                    height: 320,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: 6,right: 6),
                        itemCount: 5,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return  Container(
                            margin: EdgeInsets.all(14),
                            height: 100,
                            width: 200,
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
                                                    fontSize: 12,
                                                    color: Color(0xff646464)),),

                                              TextSpan(text: "₹ 500/Day",
                                                style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
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
                                        setState((){
                                          print("shashi 1");
                                          mobileList.add(cartList[index]);

                                        });

                                      },
                                      child: Text("Rent Now",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 13,
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
                    height: 68,
                    width: 68,
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
                  initalOffset: const Offset(20, 160))
            ]
        ),
      ),


    );
  }
}
