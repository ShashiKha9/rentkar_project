import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentkar_project/widget/mobile_body.dart';

import '../widget/cartlist.dart';

class CartScreenPage extends StatefulWidget {
  const CartScreenPage({Key? key}) : super(key: key);

  @override
  State<CartScreenPage> createState() => _CartScreenPageState();
}

class _CartScreenPageState extends State<CartScreenPage> {
  List<int> counter= List.generate(20, (index) => 0);
  int minValue=0;
  int maxValue=100;
  int total=0;
  @override
  Widget build(BuildContext context) {
    // for(int i =0;i<counter.length;i++){
    //    total= counter[i];
    // }
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text("My Cart"),
        backgroundColor: Color(0xff191919),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: mobileList.length,
                itemBuilder:(context,index){
                  return Container(
                    margin: EdgeInsets.all(14),
                    height: 120,
                    width: 80,
                    // color: Colors.green,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(mobileList[index].imageUrl,
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(color: Colors.lightBlueAccent)

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(mobileList[index].name,style: TextStyle(
                                  fontSize: 12,fontWeight: FontWeight.w600,color: Colors.white),),
                              GestureDetector(
                                onTap: (){
                                  setState((){
                                    if(counter[index] > minValue)
                                      counter[index]--;
                                    print("dec");
                                  });

                                },
                                child: Icon(CupertinoIcons.minus,color: Colors.white,),
                              ),
                              Text(counter[index].toString(),style: TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),
                              GestureDetector(
                                onTap: () {

                                  setState((){
                                    if(counter[index] < maxValue)
                                      counter[index]++;
                                    print("inc");
                                  });
                                },
                                child: Icon(CupertinoIcons.add,color: Colors.white,),
                              )

                            ],
                          ),

                        ),

                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 70),
                            child: Text("\₹${counter[index]*500.toInt()}",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                          ),
                        ),
                      ],
                    ),

                  );
                }),
          ),

          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ))
                ),
                onPressed: ()=>print("text"),
                child: Text("Checkout")),
          ),
          Text(total.toString(),style: TextStyle(color: Colors.white),)
          


        ],

      ),

    );
  }
}
