import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white, size: 24,),
        actions: [
          Icon(Icons.search, color: Colors.white, size: 24,),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            buidHeaderContent(),
            buidFoodContent(),
            buildPlaceContent(),
          ],
        ),
      ),
    );
  }
}

buildPlaceContent() {
  return Container(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Text(
                "Places",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
            ),
            Container(
              width: 240,
              height: 3,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ],
        ),
        buidPlaceItem(),
        buidPlaceItem(),
      ],
    ),
  );
}

buidPlaceItem() {
  return Container(
    margin: EdgeInsets.only(top: 16, bottom: 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child:Image.asset("assets/images/Picture2.png", fit: BoxFit.cover,),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 4),
                  child: Text(
                      "Yoshimasa Sushi",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )
                  )
              ),
              Container(
                margin: EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.orange, size: 13,)),
                    Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.orange, size: 13,)),
                    Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.orange, size: 13,)),
                    Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.orange, size: 13,)),
                    Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.orange, size: 13,)),
                  ],
                ),
              ),
              Text("Chúng tôi luôn nâng cấp trải nghiệm dịch vụ.", style: TextStyle(fontSize: 12,color: Colors.black, fontWeight: FontWeight.w300), maxLines: 2, overflow: TextOverflow.ellipsis,),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(top: 30),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                minimumSize: Size(100, 40),
                primary: Colors.lightGreenAccent,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(margin: EdgeInsets.only(right: 5), child: Icon(Icons.shopping_cart, size: 18, color: Colors.white,)),
                  Text(
                      "Order Now",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

buidHeaderContent() {
  return Container(
    padding: EdgeInsets.only(top: 20),
    margin: EdgeInsets.only(bottom: 50),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child:
              Text(
                "Today's Special",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              "Find out what's cooking today!",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            minimumSize: Size(100, 50),
            primary: Colors.green,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
          child: Row(
            children: [
              Container(margin: EdgeInsets.only(right: 5), child: Icon(Icons.shopping_cart, size: 18, color: Colors.white,)),
              Text("Cart",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

buidFoodContent() {
  return Container(
    margin: EdgeInsets.only(bottom: 50),
    child: Row(
      children: [
        Container(
          width: 200,
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.blue.shade500,
                blurRadius: 15,
                offset: Offset(0.0, 0.75),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.lightBlue,
          ),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: Image.asset("assets/images/Picture1.png"),
              ),
              Container(margin: EdgeInsets.only(bottom: 25), child: Text("Yoshimasa Sushi", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold))),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.white, size: 13,)),
                    Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.white, size: 13,)),
                    Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.white, size: 13,)),
                    Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.white, size: 13,)),
                    Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.white, size: 13,)),
                    Text("250 Ratings", style: TextStyle(fontSize: 13,color: Colors.white,),),
                  ],
                ),
              ),
              Text("Chúng tôi luôn nâng cấp trải nghiệm dịch vụ và sản phẩm tốt hơn nữa.", style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buidFoodItem(),
              buidFoodItem(),
            ],
          ),
        ),
      ],
    ),
  );
}

buidFoodItem() {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
    decoration: BoxDecoration(
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.green.shade500,
          blurRadius: 15,
          offset: Offset(0.0, 0.75),
        ),
      ],
      borderRadius: BorderRadius.all(Radius.circular(30)),
      color: Colors.lightGreen,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(margin: EdgeInsets.only(bottom: 20), child: Image.asset("assets/images/Picture6.png")),
        Container(margin: EdgeInsets.only(bottom: 12), child: Text("Yoshimasa Sushi", style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold))),
        Row(
          children: [
            Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.white, size: 13,)),
            Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.white, size: 13,)),
            Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.white, size: 13,)),
            Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.white, size: 13,)),
            Container(margin: EdgeInsets.only(right: 1.5), child: Icon(Icons.star, color: Colors.white, size: 13,)),
          ],
        ),
      ],
    ),
  );
}


