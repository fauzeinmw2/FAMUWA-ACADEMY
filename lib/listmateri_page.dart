import 'package:submission/model/web_programming.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/videomateri_view.dart';

import 'model/android_programming.dart';

class ListWebPage extends StatelessWidget{

  final WebProgramming kelas;

  ListWebPage({required this.kelas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.blueAccent,
            expandedHeight: 200,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                kelas.nama,
                style: TextStyle(color: Colors.white),
              ),
              background: Image.asset(
                kelas.thumbnail,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 110,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      if(kelas.videoMateri[index] == ''){
                        return AlertDialog(
                          content: Text("Mohon Maaf, untuk saat ini kelas masih dalam tahap pengembangan :("),
                        );
                      }else{
                        return VideoMateri(
                          urlMateri: kelas.videoMateri[index],
                          judulMateri: kelas.judulVideoMateri[index],
                          mentor: kelas.mentor,
                        );
                      }
                    }));
                  },
                  child: Card(
                    margin: const EdgeInsets.all(5),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent,
                          ),
                          child: Icon(Icons.play_arrow, color: Colors.white),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 0),
                            child: Text(
                              kelas.judulVideoMateri[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              childCount: kelas.judulVideoMateri.length,
            )
          ),
        ],
      ),
    );
  }



}

class ListAndroidPage extends StatelessWidget {

  final AndroidProgramming kelas;

  ListAndroidPage({required this.kelas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.blueAccent,
            expandedHeight: 200,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                kelas.nama,
                style: TextStyle(color: Colors.white),
              ),
              background: Image.asset(
                kelas.thumbnail,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(
              itemExtent: 110,
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                          if(kelas.videoMateri[index] == ''){
                            return AlertDialog(
                              content: Text("Mohon Maaf, untuk saat ini kelas masih dalam tahap pengembangan"),
                            );
                          }else{
                            return VideoMateri(
                              urlMateri: kelas.videoMateri[index],
                              judulMateri: kelas.judulVideoMateri[index],
                              mentor: kelas.mentor,
                            );
                          }
                        })
                      );
                    },
                    child: Card(
                      margin: const EdgeInsets.all(5),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blueAccent,
                            ),
                            child: Icon(Icons.play_arrow, color: Colors.white),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10, top: 0),
                              child: Text(
                                kelas.judulVideoMateri[index],
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                childCount: kelas.judulVideoMateri.length,
              )
          ),
        ],
      ),
    );
  }
}