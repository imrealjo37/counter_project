import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  Counter() {
    setState(() {
      // تحدث الشاشه
      count++;
    });
  }

  reset() {
    setState(() { 
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 8, 56),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 21, 18, 92),
          centerTitle: true,
          title: const Text(
            '“وَمَن يَتَّقِ اللَّهَ يَجْعَل لَّهُ مَخْرَجًا وَيَرْزُقْهُ مِنْ حَيْثُ لَا يَحْتَسِبُ”',
            style: TextStyle(
              fontSize: 16, 
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              height: 5,
            ),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Container( 
                    width:MediaQuery.of(context).size.width/1.50 ,
                    height:MediaQuery.of(context).size.height/1.50 ,  // screen size - 1.50 >> نسبه وتناسب 
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 70, 96, 201),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 9),
                            blurRadius: 20,
                          ),
                        ],
                      ),
              
                      child: Center(
                        child: Container(
                          padding: const 
                            EdgeInsets.symmetric(horizontal:40, vertical: 30 ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20), //for corner 
                            color: Colors.white
                          ),
                          child: Text(count.toString(),style:Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),),// convert ??
                        ),
                      ),
                  ),
                  const SizedBox(height: 30,),
                  Transform.translate(
                    offset: const Offset(1, 9),
                    child: Container(
                    width: 190,
                    height: 190,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight:Radius.circular(50),
                        bottomLeft: Radius.circular(50)
                        ),
                        boxShadow: [
                          BoxShadow(
                           offset: Offset(1, 9),
                           blurRadius: 20,
                           color: Colors.black,
                          ),
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: ()=> Counter(),
                           child:Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 76, 163, 175),
                              shape: BoxShape.circle,
                            ),
                           ),
                          style: ElevatedButton.styleFrom(
                            maximumSize: Size(80, 80)),
                         ),
                          // => give hir
                         const SizedBox(
                          height: 30,
                          ),

                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                             onPressed: ()=> reset(),
                             child:Icon(Icons.wifi_protected_setup),
                             style: ElevatedButton.styleFrom(
                              foregroundColor: Color.fromARGB(255, 18, 4, 74),
                             ),
                           ) 
                          ],
                         )
                      ],
                    ),
                  )
                  
                  )//move widget
                ],
              ),
            )
          ],
        ),
      );
  }
}
