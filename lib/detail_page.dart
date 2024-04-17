import 'dart:io';
import 'dart:ui' as ui;
import 'dart:ui';
import 'package:festival_app/utill.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage> {
  int imgindex = 0, colorbgindex = 0, colorfontindex = 2, fontstyleindex = 0;
  bool isimageindex = true;
  bool bold = false;
  bool italic = false;
  double sizevalue = 15;
  Alignment txtalign = Alignment.center;
  GlobalKey globalKey = GlobalKey();
  double anglevalue = 0;

  @override
  Widget build(BuildContext context) {
    List<FestivalModel> l1 =
        ModalRoute.of(context)!.settings.arguments as List<FestivalModel>;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("${Global.g1.festivalname}"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () async {
                RenderRepaintBoundary rrb = globalKey.currentContext
                    ?.findRenderObject() as RenderRepaintBoundary;
                var image = await rrb.toImage();
                var pngImg =
                    await image.toByteData(format: ImageByteFormat.png);
                Uint8List? asUint8List = pngImg?.buffer.asUint8List();

                print("asUint8List $asUint8List");
                savedImg = asUint8List;
                Navigator.pushNamed(context, "SaveImage");
              },
              icon: Icon(Icons.camera_alt))
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              RepaintBoundary(
                key: globalKey,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height * 0.50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: colorbg[colorbgindex],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height * 0.50,
                      width: double.infinity,
                      child: Visibility(
                        visible: isimageindex,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "${l1[imgindex].image}",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height * 0.50,
                      width: double.infinity,
                      alignment: txtalign,
                      child: Transform.rotate(
                        angle: anglevalue,
                        child: Text(
                          "${Global.g1.nametxt.text}",
                          style: TextStyle(
                            color: colorbg[colorfontindex],
                            fontSize: sizevalue,
                            fontFamily: fontsList[fontstyleindex],
                            fontWeight:
                                bold ? FontWeight.bold : FontWeight.normal,
                            fontStyle:
                                italic ? FontStyle.italic : FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  isimageindex = false;
                                  if (colorbgindex < colorbg.length - 1) {
                                    colorbgindex++;
                                  } else {
                                    colorbgindex = 0;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.color_lens,
                                color: Colors.black,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (colorfontindex < colorbg.length - 1) {
                                    colorfontindex++;
                                  } else {
                                    colorfontindex = 0;
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.format_color_text,
                                color: Colors.black,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  bold = !bold;
                                });
                              },
                              icon: Icon(
                                Icons.format_bold,
                                color: Colors.black,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  italic = !italic;
                                });
                              },
                              icon: Icon(
                                Icons.format_italic,
                                color: Colors.black,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  txtalign = Alignment.centerLeft;
                                });
                              },
                              icon: Icon(
                                Icons.format_align_left,
                                color: Colors.black,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  txtalign = Alignment.center;
                                });
                              },
                              icon: Icon(
                                Icons.format_align_center,
                                color: Colors.black,
                              )),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  txtalign = Alignment.centerRight;
                                });
                              },
                              icon: Icon(
                                Icons.format_align_right,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() async {
                                await showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: TextField(
                                        controller: Global.g1.nametxt,
                                        decoration: InputDecoration(
                                          label: Text(
                                            "title",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      actions: [
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              setState(() {});
                                            },
                                            child: Text("ok")),
                                      ],
                                    );
                                  },
                                );
                              });
                            },
                            icon: Icon(
                              Icons.title,
                              color: Colors.black,
                            )),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                anglevalue++;
                              });
                            },
                            icon: Icon(
                              Icons.rotate_left,
                              color: Colors.black,
                            )),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                anglevalue--;
                              });
                            },
                            icon: Icon(
                              Icons.rotate_right,
                              color: Colors.black,
                            )),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                imgindex = 0;
                                colorbgindex = 0;
                                colorfontindex = 2;
                                fontstyleindex = 0;
                                isimageindex = true;
                                bold = false;
                                italic = false;
                                sizevalue = 15;
                                txtalign = Alignment.center;
                                anglevalue = 0;
                              });
                            },
                            icon: Icon(Icons.lock_reset_rounded)),
                      ],
                    ),
                    Slider(
                      value: sizevalue,
                      onChanged: (value) {
                        setState(() {
                          sizevalue = value;
                        });
                      },
                      divisions: 10,
                      max: 50,
                      min: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: l1.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            height: 100,
                            width: 100,
                            color: Colors.white,
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isimageindex = true;
                                    imgindex = index;
                                  });
                                },
                                child: Image.asset(
                                  "${l1[index].image}",
                                  fit: BoxFit.cover,
                                )),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: fontsList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {
                                setState(() {
                                  fontstyleindex = index;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "POOJA",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: fontsList[index],
                                      color: Colors.black),
                                ),
                              ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
