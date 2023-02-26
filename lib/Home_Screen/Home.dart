import 'package:flutter/material.dart';

class CalHome extends StatefulWidget {
  const CalHome({Key? key}) : super(key: key);

  @override
  State<CalHome> createState() => _CalHomeState();
}

class _CalHomeState extends State<CalHome> {

  double out=0;
  int ? inp;
  String value="";
  double first=0;
  double last=0;
  String sing="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
           Container(
             height: 100,
             width: double.infinity,
             color: Colors.tealAccent,
             child: Column(
               children: [
                 Text("$value",style: TextStyle(fontSize: 30),),
                 SizedBox(height: 5,),
                 Text("$out",style:TextStyle(fontSize: 30) ,),
               ],
             ),
           ),
           Container(
             height: 500,
             width: double.infinity,
             color: Color(0xff2E2D32),
             child: Column(
               children: [
                 SizedBox(height: 10,),
                 Container(
                   child: Row(
                     children: [
                       Expanded(
                         flex: 2,
                           child:InkWell(
                             onTap: () {
                               setState(() {
                                 value ="";
                                 out = 0;
                               });
                             },
                             child: Container(
                               alignment: Alignment.topLeft,
                               child: Container(
                                 height: 50,
                                 width: 130,
                                 alignment: Alignment.center,
                                 decoration: BoxDecoration(
                                   color: Color(0xffFF5A66),
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                                 child: Text("AC",style: TextStyle(color: Colors.white,fontSize: 25,),),
                               ),
                             ),
                           ),
                       ),
                       Expanded(child: InkWell(
                         onTap: () {
                           setState(() {
                             first = double.parse(value);
                             sing = "%";
                             inp = 5;
                             value ="";
                           });
                         },  
                         child: Button("%",Color(0xff929292)),
                       ),),
                       Expanded(child: InkWell(
                         onTap: () {
                           setState(() {
                             first = double.parse(value);
                             sing = "/";
                             inp = 4;
                             value = "";
                           });
                         },
                         child: Button("/",Color(0xffFF5A66)),
                       ),)
                     ],
                   ),
                 ),
                 SizedBox(height: 10,),
                 Container(
                   child: Expanded(
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                       children: [
                         Expanded(child: Column(
                           crossAxisAlignment: CrossAxisAlignment.stretch,
                           children: [
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 value = value +"7";
                               });
                             },
                               child: num("7",Alignment.center),
                             ),),
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 value = value + "4";
                               });
                             },
                               child: num("4",Alignment.center),
                             ),),
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 value = value+"1";
                               });
                             },
                               child: num("1",Alignment.center),
                             ),),
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 value = value+"00";
                               });
                             },
                             child: num("00",Alignment.center),),),
                           ],
                         ),),
                         Expanded(child: Column(
                           crossAxisAlignment: CrossAxisAlignment.stretch,
                           children: [
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 value = value + "8";
                               });
                             },
                             child: num("8",Alignment.center),),),
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 value = value +"5";
                               });
                             },
                             child: num("5",Alignment.center),)),
                             Expanded(child: InkWell(
                               onTap: () {
                                 setState(() {
                                   value = value + "2";
                                 });
                               },
                               child: num("2",Alignment.center),)),
                             Expanded(child: InkWell(
                               onTap: () {
                                 setState(() {
                                   value = value + "0";
                                 });
                               },
                               child: num("0",Alignment.center),)),
                           ],
                         ),),
                         Expanded(child: Column(
                           crossAxisAlignment: CrossAxisAlignment.stretch,
                           children: [
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 value = value + "9";
                               });
                             },
                               child: num("9",Alignment.center),)),
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 value = value + "6";
                               });
                             },
                             child: num("6",Alignment.center),)),
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 value = value + "3";
                               });
                             },
                             child: num("3",Alignment.center),)),
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 value = value + ".";
                               });
                             },
                             child: num(".",Alignment.center),)),
                           ],
                         )),
                         Expanded(child: Column(
                           crossAxisAlignment: CrossAxisAlignment.stretch,
                           children: [
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 first = double.parse(value);
                                 sing = "*";
                                 inp =1;
                                 value ="";
                               });
                             },
                             child: Button("*",Color(0xffFF5A66)),)),
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 first =double.parse(value);
                                 sing = "-";
                                 inp=2;
                                 value = "";
                               });
                             },
                             child: Button("-",Color(0xffFF5A66)),)),
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 first = double.parse(value);
                                 sing = "+";
                                 inp = 3;
                                 value = "";
                               });
                             },
                             child: Button("+",Color(0xffFF5A66)),)),
                             Expanded(child: InkWell(onTap: () {
                               setState(() {
                                 last = double.parse(value);
                                 switch(inp)
                                 {
                                   case 1:
                                     {
                                       out = first * last;
                                       break;
                                     }
                                   case 2:
                                     {
                                       out = first - last;
                                       break;
                                     }
                                   case 3:
                                     {
                                       out = first + last;
                                       break;
                                     }
                                   case 4:
                                     {
                                       out = first / last;
                                       break;
                                     }
                                   case 5:
                                     {
                                       out = first % last;
                                       break;
                                     }
                                 }
                                 value = first.toString()+ sing + last.toString();
                               });
                             },
                             child: Container(
                               height: 50,
                               width: 50,
                               alignment: Alignment.center,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,color:Color(0xffFF5A66),
                               ),
                               child: Text("=",style: TextStyle(color: Colors.white,fontSize: 25),),
                             ),))
                           ],
                         ),),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ],
       ),
     ),
    );
  }
  Widget num(String n,Alignment aln)
  {
    return Container(
      height: 50,
      width: 50,
      
      alignment: aln,
      child: Text("$n",style: TextStyle(color: Colors.white,fontSize: 20),),
    );
  }
  
  Widget Button(String n,Color c1)
  {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      child: Text("$n",style: TextStyle(color: c1,fontSize: 20),),
    );
  }

}
