import 'package:flutter/material.dart';

void main() {
  runApp(const FaceBookLayOut());
}

class FaceBookLayOut extends StatelessWidget {
  const FaceBookLayOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/muathu.jpg',
                        fit: BoxFit.cover,
                        height: 200,
                        width: double.infinity,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 100, left: 12, right: 12),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 12),
                              child: Text(
                                'Lê Công Quốc Duy',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 12),
                              child: Text(
                                '10 bạn bè',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 12),
                              alignment: Alignment.center,
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(double.infinity, 50),
                                  primary: Colors.blueAccent,
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add_circle,
                                ),
                                label: Text(
                                  'Thêm vào tin',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 12),
                              alignment: Alignment.center,
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(double.infinity, 50),
                                  primary: Colors.grey.shade200,
                                  onPrimary: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                ),
                                label: Text(
                                  'Chỉnh sửa trang cá nhân',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                                'Tất cả mọi người đều là những con rối và tôi cũng chỉ là một con rối thấy được sợi dây',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 100,
                  right: 92,
                  child: CircleAvatar(
                      radius: 95,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 90,
                        backgroundImage: AssetImage('assets/images/chovy.jpg'),
                      )),
                ),
                Positioned(
                  top: 130,
                  right: 23,
                  child: Container(
                    alignment: Alignment.center,
                    width: 53,
                    height: 40,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)), color: Colors.white),
                    child: TextButton(
                      child: Icon(Icons.camera_alt),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Positioned(
                  top: 230,
                  right: 100,
                  child: Container(
                    alignment: Alignment.center,
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100)), color: Colors.grey.shade300),
                    child: TextButton(
                      child: Icon(Icons.camera_alt),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
