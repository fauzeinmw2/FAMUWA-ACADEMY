import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:submission/model/web_programming.dart';
import 'listmateri_page.dart';
import 'model/android_programming.dart';

class HomePage extends StatefulWidget{

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 50, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SvgPicture.asset("assets/icons/menu.svg"),
                    Image.asset("assets/images/fauzein.png")
                  ],
                ),
                SizedBox(height: 30,),
                Text(
                  "Hai Fauzein,",
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xFF0D1333),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Semangat Belajarnya",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF61688B),
                    height: 2,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F7),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: <Widget>[
                      SvgPicture.asset("assets/icons/search.svg"),
                      SizedBox(width: 16),
                      Text(
                        "Search for anything",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFA0A5BD),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  height: 48,
                  decoration: BoxDecoration(
                      color: Color(0xFF292639),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: TabBar(
                      indicator: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      tabs: [
                        Tab(text: 'Website',),
                        Tab(text: 'Android',),
                        Tab(text: 'Game',),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 400,
                  child: TabBarView(
                    children: [
                      GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        children: webProgrammingList.map((kelasWeb){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return ListWebPage(kelas: kelasWeb);
                              }));
                            },
                            child: Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(child:
                                    Image.asset(
                                      kelasWeb.thumbnail,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      kelasWeb.nama,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0, bottom: 10.0),
                                    child: Text(
                                      kelasWeb.mentor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),

                      GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        children: androidProgrammingList.map((kelasAndroid){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return ListAndroidPage(kelas: kelasAndroid);
                              }));
                            },
                            child: Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(child:
                                  Image.asset(
                                    kelasAndroid.thumbnail,
                                    fit: BoxFit.cover,
                                  ),
                                  ),
                                  SizedBox(height: 8,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      kelasAndroid.nama,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0, bottom: 10.0),
                                    child: Text(
                                      kelasAndroid.mentor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Text(
                              'Jalur Belajar Game Development Sedang dalam tahap pengembangan',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}