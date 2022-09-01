import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:sadapay_ui/util/ColorResources.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DraggableHome(
        title: const Text(""),
        backgroundColor: ColorResources.white,
        headerWidget: headerWidget(context),
        appBarColor: ColorResources.colorPrimary,
        headerExpandedHeight: 0.40,
        body: [bodyWidget(context)],
        fullyStretchable: false,
      ),
    );
  }

  headerWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 5),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 2, top: 30),
                  width: 185,
                  height: 265,
                  decoration: BoxDecoration(
                    color: ColorResources.colorSecondary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Current Balance",
                                  style: TextStyle(
                                      color: ColorResources.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Rs. 100",
                                  style: TextStyle(
                                      color: ColorResources.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 22),
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 15, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    Icons.money,
                                    size: 40.5,
                                    color: ColorResources.white,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 40.5,
                                    color: ColorResources.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: 160,
                    height: 128,
                    decoration: BoxDecoration(
                      color: ColorResources.blue,
                      borderRadius: BorderRadius.circular(20),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    width: 160,
                    height: 128,
                    decoration: BoxDecoration(
                      color: ColorResources.colorPrimary,
                      borderRadius: BorderRadius.circular(20),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  bodyWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: 35,
            height: 4,
            color: ColorResources.grey,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Aug 19",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
          ),
        ),
        ListView.builder(
          padding: const EdgeInsets.only(top: 5),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 20,
          shrinkWrap: true,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal.shade50,
                child: const Icon(Icons.arrow_circle_down_sharp,
                    color: ColorResources.colorSecondary),
              ),
              title: const Text(
                "MOIN CHANNA",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text("1:08 AM"),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "+ Rs. 1000",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        color: ColorResources.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "+ Rs. 1000",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: ColorResources.colorSecondary),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
