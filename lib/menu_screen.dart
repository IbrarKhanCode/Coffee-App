import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(width: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey.shade300)
                          ),
                          child: Icon(Icons.arrow_back_ios,size: 20,)),
                    ),
                        SizedBox(width: 100,),
                        Text('Menu',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.teal.shade100,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(Icons.local_mall_outlined,color: Colors.deepOrange,),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Solo Paragon Mall',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          Text('2.4km   10 minutes',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey.shade300)
                          ),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(color: Colors.grey.shade200,),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(Icons.location_on_outlined,color: Colors.black,size: 28,),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Your Location',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          Text('Smart Sultan Property',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey.shade300)
                          ),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Container(
                          height: 37,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.grey.shade400)
                          ),
                          child: Center(child: Text('Coffee',style: TextStyle(fontWeight: FontWeight.w500),)),
                        ),
                        SizedBox(width: 15,),
                        Text('Non-Coffee',style: TextStyle(fontWeight: FontWeight.w500),),
                        SizedBox(width: 35,),
                        Text('Baverage',style: TextStyle(fontWeight: FontWeight.w500),),
                        SizedBox(width: 35,),
                        Text('Soda',style: TextStyle(fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Container(
                        height: 180,
                        width: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                           image: AssetImage('images/blackCoffee.png'),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 180,
                        width: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('images/capacino.png'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      Text('Black Tea',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      SizedBox(width: 50,),
                      Text('\$3.23',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                      SizedBox(width: 20,),
                      Text('Capucinno',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      SizedBox(width: 50,),
                      Text('\$3.75',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        height: 40,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.grey.shade200)
                        ),
                        child: Center(child: Text('Customize',style: TextStyle(fontWeight: FontWeight.w500),)),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 40,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.grey.shade200)
                        ),
                        child: Center(child: Text('Order',style: TextStyle(fontWeight: FontWeight.w500),)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Container(
                        height: 180,
                        width: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('images/coffee.png'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 180,
                        width: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('images/IcedCoffee.png'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      Text('Coffee',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      SizedBox(width: 70,),
                      Text('\$2.22',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                      SizedBox(width: 25,),
                      Text('Iced Coffee',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                      SizedBox(width: 40,),
                      Text('\$3.75',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
