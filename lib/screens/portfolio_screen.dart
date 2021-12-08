import 'package:aha/widgets/tool_widget.dart';
import 'package:flutter/material.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("Portfolio",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("\$23,596",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 40,
                  width: 85,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Color(0XFF5CD44F),
                    child: Center(
                      child: Text("+13.2%",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, top: 20),
              child: Text("Assets",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Column(
              children: [
                Container(
                  height: 80,
                  margin:
                      const EdgeInsets.only(left: 20.0, top: 10, right: 20.0),
                  child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side: BorderSide(width: 1, color: Color(0XFFEBECEF))),
                      child: Row(
                        children: [
                          SizedBox(width: 15),
                          Flexible(
                              child: Image.asset("assets/images/aha.png",
                                  fit: BoxFit.fitWidth)),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("AHA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17)),
                              Text("Aha Education",
                                  style: TextStyle(
                                    color: Color(0XFF7C7C7C),
                                  ))
                            ],
                          ),
                          SizedBox(width: 15),
                          Flexible(
                              child: Image.asset("assets/images/chart.png",
                                  fit: BoxFit.fitWidth)),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("221.5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17)),
                              Text("~ \$0.8799",
                                  style: TextStyle(
                                    color: Color(0XFF7C7C7C),
                                  ))
                            ],
                          ),
                        ],
                      )),
                ),
                Container(
                  height: 80,
                  margin:
                      const EdgeInsets.only(left: 20.0, top: 10, right: 20.0),
                  child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side: BorderSide(width: 1, color: Color(0XFFEBECEF))),
                      child: Row(
                        children: [
                          SizedBox(width: 15),
                          Flexible(
                              child: Image.asset("assets/images/eth.png",
                                  fit: BoxFit.fitWidth)),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("ETH",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17)),
                              Text("Ethereum",
                                  style: TextStyle(
                                    color: Color(0XFF7C7C7C),
                                  ))
                            ],
                          ),
                          SizedBox(width: 40),
                          Flexible(
                              child: Image.asset("assets/images/chart.png",
                                  fit: BoxFit.fitWidth)),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("0.05020",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17)),
                              Text("~ \$3,522.91",
                                  style: TextStyle(
                                    color: Color(0XFF7C7C7C),
                                  ))
                            ],
                          ),
                        ],
                      )),
                ),
                Container(
                  height: 80,
                  margin:
                      const EdgeInsets.only(left: 20.0, top: 10, right: 20.0),
                  child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side: BorderSide(width: 1, color: Color(0XFFEBECEF))),
                      child: Row(
                        children: [
                          SizedBox(width: 15),
                          Flexible(
                              child: Image.asset("assets/images/btc.png",
                                  fit: BoxFit.fitWidth)),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("BTC",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17)),
                              Text("Bitcoin",
                                  style: TextStyle(
                                    color: Color(0XFF7C7C7C),
                                  ))
                            ],
                          ),
                          SizedBox(width: 60),
                          Flexible(
                              child: Image.asset("assets/images/chart.png",
                                  fit: BoxFit.fitWidth)),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("0.03020",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17)),
                              Text("~ \$8,243.41",
                                  style: TextStyle(
                                    color: Color(0XFF7C7C7C),
                                  ))
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
            ToolWidget(),
            SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
