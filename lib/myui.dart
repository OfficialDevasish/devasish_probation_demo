import 'package:flutter/material.dart';

class myui extends StatefulWidget {
  @override
  State<myui> createState() => _myuiState();
}

class _myuiState extends State<myui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second UI"),
      ),
      body: Container(
        child: Column(children: [
          Container(
            child: Expanded(
              child: Text(
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
            ),
          ),
          Expanded(
              // elevation: 4500,
              child: Container(
                  margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),

                  // margin: EdgeInsets.all(05),
                  // height: 100,
                  decoration: const BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(width: 32.0),
                            Container(
                              child: Text(
                                "790 \n  "
                                "Available Cash",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(
                              height: 15,
                              thickness: 2,
                              indent: 0,
                              endIndent: 0,
                              color: Colors.black,
                            ),
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
                            const Divider(
                              height: 08,
                              thickness: 2,
                              indent: 0,
                              endIndent: 0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        Row(children: [
                          const VerticalDivider(
                            width: 50,
                            thickness: 1,
                            indent: 0,
                            endIndent: 0,
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
                          Container(
                            margin: EdgeInsets.all(15.0),
                            padding: EdgeInsets.all(50.0),
                            alignment: Alignment.centerLeft,
                            height: 100,
                            width: 2,
                            color: Colors.black,
                          ),
                        ]),
                      ])))
        ]),
      ),
    );
  }
}
