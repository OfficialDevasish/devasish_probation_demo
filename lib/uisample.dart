import 'package:flutter/material.dart';

class uisample extends StatefulWidget {
  uisample({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _uisampleState createState() => _uisampleState();
}

class _uisampleState extends State<uisample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "UI SAMPLE",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
          children: <Widget>[
        Expanded(
            child: Container(
              margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
          height: 100,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  SizedBox(height: 250.0),
                  Text(
                    "Wallet  \n \n \n"
                    "Hello\n"
                    "James Cashman",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        )),
        Expanded(

          child: Container(
            decoration: const BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.all(Radius.circular(20))),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Divider(
                  height: 0,
                  thickness: 5,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.yellowAccent,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "790 \n  "
                      "Available Cash",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Divider(
                  height: 10,
                  thickness: 2,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget>[
                          Icon(
                            Icons.send,
                            size: 50,
                          ),
                          Text(
                            "Send Money\n",
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 2,
                      color: Colors.black,
                    ),
                    Expanded
                      (
                      child: Column
                        (
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.request_page,
                          size: 50,

                        ),
                        Text(
                          "Request\n",
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),

                      ],


                    ), )
                  ],
                ),
                const Divider(
                  height: 0,
                  thickness: 2,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    const VerticalDivider(
                      width: 50,
                      thickness: 2,
                      indent: 12,
                      endIndent: 10,
                      color: Colors.black,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const <Widget>[
                        Icon(
                          Icons.multiple_stop_outlined,
                          size: 50,
                        ),
                        Text(
                          "Transaction\n",
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(11),),
                    Container(

                      height: 95,
                      width: 2,
                      color: Colors.black,
                    ),
                    Expanded(child: Container(
                      // height = size.height;
                      // width = size.width;
                      color: Colors.black,
                    ),),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.person,
                          size: 50,

                        ),
                        Text(
                          "Rewards Point\n",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],

                    ),

                  ],
                ),
                //

              ],
            ),
          ),
        ),
      ]),
    );
  }
}
