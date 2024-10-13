
import 'package:coffee_app/menu_screen.dart';
import 'package:flutter/material.dart';

class HomeoneScreen extends StatefulWidget {
  const HomeoneScreen({super.key});

  @override
  State<HomeoneScreen> createState() => _HomeoneScreenState();
}

class _HomeoneScreenState extends State<HomeoneScreen> {

  List<String> images = [
    "images/first one.png",
    "images/second.png",
    "images/third.png",
    "images/fourth.png",
  ];

  List<String> headText = [
    "SIP AND SAVE!",
    "BUY 1 GET 1",
    "ENJOY YOUR COFFEE",
    "OFFICE COFFEE",
  ];

  List<String> paragraph = [
    "Enjoy 10% of your coffee with code BREW10.Taste the goodness one cup at a time!",
    "Buy any coffee enjoy the second on us.Code JAVAJOY2 cheers to shared moments",
    "Enjoy the coffee with excitement and give us a beautiful review",
    "Coffee is very best choice when in work. it feels very amazing in office",
  ];

  List colors = [
    Colors.pink.shade100,
    Colors.orange,
    Colors.green,
    Colors.blue,
  ];

  var index = 0;
  int currentIndex= 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Welcome back,',style: TextStyle(color: Colors.grey),),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text('Ibrar Khan',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Icon(Icons.email_outlined),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Icon(Icons.emoji_emotions_outlined,color: Colors.white,),
                    ),
                    SizedBox(width: 10,),
                    Text('30 Points',style: TextStyle(fontWeight: FontWeight.w500),),
                    Spacer(),
                    Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text('Redeem',style: TextStyle(color: Colors.white),)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Image.asset('images/delivery.png',height: 100,),
                        SizedBox(height: 20,),
                        Text('Delivery',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),)
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Image.asset('images/pickup.png',height: 100,),
                        SizedBox(height: 20,),
                        Text('Self Pickup',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("Today's Promo",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          Text('(4 items)',style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 350,
                child: ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,index){
                      return  Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            SizedBox(width: 15,),
                            Container(
                              height: 130,
                              width: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                  border: Border.all(color: Colors.grey.shade300)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(headText[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                                    SizedBox(height: 8,),
                                    Text(paragraph[index],style: TextStyle(color: Colors.grey),)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: colors[index],
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                              ),
                              child: Image.asset(images[index]),
                            )
                          ],
                        ),
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.deepOrangeAccent,
        currentIndex: currentIndex,
        iconSize: 30,
        onTap: (int newIndex){
          setState(() {
            currentIndex = newIndex;
          });
        },

        items: [
          BottomNavigationBarItem(icon: GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()
                  ),
              );
            },
              child: Icon(Icons.menu,color: Colors.orange,)),label: 'Menu',),
          BottomNavigationBarItem(icon: Icon(Icons.email_outlined,color: Colors.orange,),label: 'Email'),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.orange,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.telegram,color: Colors.orange,),label: 'Telegram'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined,color: Colors.orange,),label: 'Person'),
        ],
      ),
    );
  }
}
