import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController removeButtonController =
      TextEditingController(text: '1');

  int pullover_tracker = 1;
  int tShirt_tracker = 1;
  int sport_dress_tracker = 1;
  int pullover_price = 51;
  int tShirt_price = 30;
  int sport_dress_price = 43;

  mySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Bag",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("assets/module-13 assignment t-shirt image.png",height: 100,width: 100),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Pullover",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Color: ",
                                        style: TextStyle(
                                            color: Colors.grey.shade500),
                                      ),
                                      const Text(
                                        "Black",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      const SizedBox(width: 16),
                                      Text(
                                        "Size: ",
                                        style: TextStyle(
                                            color: Colors.grey.shade500),
                                      ),
                                      const Text(
                                        "L",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: _buildOnTapRemoveButton_Pullover,
                                        style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(), // Makes the button circular
                                            padding: const EdgeInsets.all(10),
                                            foregroundColor: Colors.grey// Adjust the padding to control the size
                                        ),
                                        child: const Icon(Icons.remove), // You can use an icon or text
                                      ),

                                      Text(
                                          getCurrentProductNumber_pullover().toString()),
                                      ElevatedButton(
                                        onPressed: _buildOnTapAddButton_Pullover,
                                        style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(), // Makes the button circular
                                            padding: const EdgeInsets.all(10),
                                            foregroundColor: Colors.grey// Adjust the padding to control the size
                                        ),
                                        child: const Icon(Icons.add), // You can use an icon or text
                                      ),

                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Positioned(
                              bottom: 10,
                              right: 10,
                              child: Row(
                                children: [
                                  Text(_pullover_price().toString(),style: const TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  const Text("\$",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),)
                                ],
                              )
                          ),
                          Positioned(
                              top: 0,
                              right: 0,
                              child: Image.asset(
                                "assets/3 dot icon.png",
                                width: 30,
                                height: 30,// Adjust as needed
                              )

                          ),

                        ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset("assets/module-13 assignment t-shirt image.png",height: 100,width: 100),

                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "T-Shirt",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Color: ",
                                          style: TextStyle(
                                              color: Colors.grey.shade500),
                                        ),
                                        const Text(
                                          "Gray",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        const SizedBox(width: 16),
                                        Text(
                                          "Size: ",
                                          style: TextStyle(
                                              color: Colors.grey.shade500),
                                        ),
                                        const Text(
                                          "L",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Row(
                                      children: [
                                        ElevatedButton(
                                          onPressed: _buildOnTapRemoveButton_tshirt,
                                          style: ElevatedButton.styleFrom(
                                              shape: const CircleBorder(), // Makes the button circular
                                              padding: const EdgeInsets.all(10),
                                              foregroundColor: Colors.grey// Adjust the padding to control the size
                                          ),
                                          child: const Icon(Icons.remove), // You can use an icon or text
                                        ),

                                        Text(
                                            getCurrentProductNumber_tshirt().toString()),
                                        ElevatedButton(
                                          onPressed: _buildOnTapAddButton_tshirt,
                                          style: ElevatedButton.styleFrom(
                                              shape: const CircleBorder(), // Makes the button circular
                                              padding: const EdgeInsets.all(10),
                                              foregroundColor: Colors.grey// Adjust the padding to control the size
                                          ),
                                          child: const Icon(Icons.add), // You can use an icon or text
                                        ),

                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child: Row(
                                  children: [
                                    Text(_tshirt_price().toString(),style: const TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),),
                                    const Text("\$",style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                )
                            ),
                            Positioned(
                                top: 0,
                                right: 0,
                                child: Image.asset(
                                  "assets/3 dot icon.png",
                                  width: 30,
                                  height: 30,// Adjust as needed
                                )

                            ),


                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("assets/module-13 assignment t-shirt image.png",height: 100,width: 100,),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Sport Dress",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Color: ",
                                        style: TextStyle(
                                            color: Colors.grey.shade500),
                                      ),
                                      const Text(
                                        "Black",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      const SizedBox(width: 16),
                                      Text(
                                        "Size: ",
                                        style: TextStyle(
                                            color: Colors.grey.shade500),
                                      ),
                                      const Text(
                                        "M",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: _buildOnTapRemoveButton_sport_dress,
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(), // Makes the button circular
                                          padding: const EdgeInsets.all(10),
                                          foregroundColor: Colors.grey// Adjust the padding to control the size
                                        ),
                                        child: const Icon(Icons.remove), // You can use an icon or text
                                      ),

                                      Text(
                                          getCurrentProductNumber_sport_dress().toString()),
                                      ElevatedButton(
                                        onPressed: _buildOnTapAddButton_sport_dress,
                                        style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder(), // Makes the button circular
                                          padding: const EdgeInsets.all(10),
                                          foregroundColor: Colors.grey// Adjust the padding to control the size
                                        ),
                                        child: const Icon(Icons.add), // You can use an icon or text
                                      ),

                                    ],
                                  )
                                ],
                              ),
                              // Align(
                              //     alignment: Alignment.bottomRight,
                              //     child: Text("51\$")
                              // )
                      ],
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Row(
                              children: [
                                Text(_sports_dress_price().toString(),style: const TextStyle(
                                  fontWeight: FontWeight.bold
                                ),),
                                const Text("\$",style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),

                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Image.asset(
                              "assets/3 dot icon.png",
                              width: 30,
                              height: 30,// Adjust as needed
                            )

                          ),

                        ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Total amount: ",style: TextStyle(
                      color: Colors.grey,fontSize: 16
                    ),),
                    Text(_getTotalBillCount(),style: const TextStyle(
                      fontWeight: FontWeight.w900,fontSize: 18
                    ),)
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    mySnackBar("Congratulations on your purchase", context);
                  },
                  style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.red),
                  child: const Text("CHECK OUT"),
                ),

              ),
            ],
          ),
        ));
  }

  int getCurrentProductNumber_pullover() {
    int CurrentNumber = 0;
    CurrentNumber = pullover_tracker;
    return CurrentNumber;
  }

  void _buildOnTapAddButton_Pullover() {
    pullover_tracker++;
    setState(() {});
  }

  void _buildOnTapRemoveButton_Pullover() {
    pullover_tracker--;
    setState(() {});
  }

  int getCurrentProductNumber_tshirt() {
    int CurrentNumber = 0;
    CurrentNumber = tShirt_tracker;
    return CurrentNumber;
  }

  void _buildOnTapAddButton_tshirt() {
    tShirt_tracker++;
    setState(() {});
  }

  void _buildOnTapRemoveButton_tshirt() {
    tShirt_tracker--;
    setState(() {});
  }
  int getCurrentProductNumber_sport_dress() {
    int CurrentNumber = 0;
    CurrentNumber = sport_dress_tracker;
    return CurrentNumber;
  }

  void _buildOnTapAddButton_sport_dress() {
    sport_dress_tracker++;
    setState(() {});
  }

  void _buildOnTapRemoveButton_sport_dress() {
    sport_dress_tracker--;
    setState(() {});
  }

  String _getTotalBillCount(){
    int totalBill = (pullover_tracker*pullover_price)+(tShirt_tracker*tShirt_price)+(sport_dress_tracker*sport_dress_price);
    return "$totalBill\$";
  }

  int _sports_dress_price(){
    return sport_dress_price;
  }
  int _tshirt_price(){
    return tShirt_price;
  }
  int _pullover_price(){
    return pullover_price;
  }

}
