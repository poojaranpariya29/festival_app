import 'package:festival_app/utill.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  void initState() {
    super.initState();
    Global.g1.festivalsList.map((e) {
      FestivalModel q1 = FestivalModel.fromMap(e);
      Global.g1.modelList.add(q1);
    }).toList();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title:
                Text("Festival Studio", style: TextStyle(color: Colors.black)),
            centerTitle: true,
            backgroundColor: Colors.black12,
          ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/1.jpg"), fit: BoxFit.cover)),
              ),
              Container(
                color: Colors.black12,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 190),
                  itemCount: Global.g1.festivalList.length,
                  padding: EdgeInsets.all(5),
                  itemBuilder: (context, index) {
                    return festivalTile(Global.g1.festivalList[index]);
                  },
                ),
              ),
            ],
          )),
    );
  }

  Row festivalTile(festivalCategoryModel f1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  List<FestivalModel> l1 = [];
                  Global.g1.festivalname = f1.name;
                  for (var x in Global.g1.modelList) {
                    if (x.name == f1.name) {
                      l1.add(x);
                    }
                  }
                  Navigator.pushNamed(context, 'detail', arguments: l1);
                },
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber.shade50),
                  child: Image.asset(
                    "${f1.image}",
                    height: 200,
                    width: 200,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Text(
                "${f1.name}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 19),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
