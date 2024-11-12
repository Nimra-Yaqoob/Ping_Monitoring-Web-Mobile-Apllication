import 'dart:async';
import 'dart:convert';
import 'dart:html';

import 'package:design/card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class pingmonitor extends StatefulWidget {
  const pingmonitor({super.key});

  @override
  State<pingmonitor> createState() => _pingmonitorState();
}

//1  =>
//2  {  return }
class _pingmonitorState extends State<pingmonitor> {
  List ips = [
    "10.6.11.157",
    "10.6.10.182",
    "10.6.11.152",
    "10.6.10.172",
    "10.6.10.174",
    "10.6.10.190",
    "10.10.2.15",
    "10.10.4.15",
    "172.17.5.15",
    "10.10.6.15",
    "10.10.7.15",
    "172.17.10.15",
    "10.10.11.15",
    "10.10.14.15",
    "172.17.15.15",
    "10.10.16.15",
    "10.10.17.15",
    "10.10.20.15",
    "10.10.21.15",
    "10.10.22.15",
    "10.10.24.15",
    "10.10.27.15",
    "10.10.28.15",
    "172.17.29.15",
    "10.10.30.15",
    "10.10.31.15",
    "172.17.32.15",
    "10.10.33.15",
    "10.10.35.15",
    "10.10.36.15",
    "10.10.38.15",
    "10.10.39.15",
    "10.10.41.15",
    "10.10.42.15",
    "172.17.43.15",
    "10.10.47.15",
    "10.10.49.15",
    "10.10.52.15",
    "10.10.53.15",
    "10.10.56.15",
    "10.10.58.15",
    "172.17.61.15",
    "10.10.63.15",
    "172.17.64.15",
    "10.10.66.15",
    "10.10.68.15",
    "10.10.69.15",
    "172.17.81.15",
    "10.10.83.15",
    "10.10.84.15",
    "10.10.86.15",
    "10.10.89.15",
    "10.10.90.15",
    "10.10.91.15",
    "172.17.93.15",
    "10.10.94.15",
    "10.10.95.15",
    "10.10.96.15",
    "10.10.97.15",
    "10.10.99.15",
    "10.11.1.15",
    "172.17.103.15",
    "10.11.4.15",
    "10.11.6.15",
    "10.11.7.15",
    "172.17.108.15",
    "10.11.9.15",
    "10.11.10.15",
    "172.17.111.15",
    "10.11.12.15",
    "10.11.13.15",
    "10.11.16.15",
    "172.17.117.15",
    "10.11.19.15",
    "10.11.20.15",
    "10.11.21.15",
    "10.11.22.15",
    "172.17.123.15",
    "10.11.24.15",
    "10.11.25.15",
    "10.11.26.15",
    "10.11.27.15",
    "10.11.28.15",
    "10.11.30.15",
    "10.11.31.15",
    "10.11.33.15",
    "10.11.34.15",
    "172.17.137.15",
    "10.11.39.15",
    "10.11.41.15",
    "10.11.43.15",
    "10.11.44.15",
    "10.11.45.15",
    "10.11.46.15",
    "10.11.47.15",
    "10.11.49.15",
    "10.11.50.15",
    "172.17.196.15",
    "10.11.52.15",
    "10.11.54.15",
    "10.11.55.15",
    "172.17.60.15",
    "10.11.57.15",
    "10.11.58.15",
    "10.11.59.15",
    "10.11.60.15",
    "10.11.61.15",
    "10.11.62.15",
    "10.11.66.15",
    "10.11.67.15",
    "10.11.68.15",
    "10.11.70.15",
    "10.11.71.15",
    "10.11.72.15",
    "10.11.75.15",
    "10.11.76.15",
    "10.11.78.15",
    "10.11.79.15",
    "10.11.80.15",
    "10.11.81.15",
    "10.11.82.15",
    "10.11.83.15",
    "10.11.85.15",
    "10.11.86.15",
    "10.11.87.15",
    "10.11.88.15",
    "10.11.89.15",
    "10.11.90.15",
    "10.11.91.15",
    "10.11.92.15",
    "10.11.93.15",
    "10.11.94.15",
    "10.11.95.15",
    "10.11.96.15",
    "10.11.97.15",
    "10.11.98.15",
    "10.11.99.15",
    "10.12.1.15",
    "10.12.2.15",
    "10.12.3.15",
    "10.12.4.15",
    "10.12.5.15",
    "10.12.6.15",
    "10.12.7.15",
    "10.12.8.15",
    "10.12.9.15",
    "10.12.10.15",
    "10.12.12.15",
    "10.12.13.15",
    "10.12.15.15",
    "10.12.16.15",
    "10.12.17.15",
    "10.12.18.15",
    "10.12.19.15",
    "10.12.20.15",
    "10.12.21.15",
    "10.12.22.15",
    "10.12.23.15",
    "10.12.24.15",
    "10.12.25.15",
    "10.12.26.15",
    "10.12.28.15",
    "10.12.29.15",
    "10.12.30.15",
    "10.12.31.15",
    "10.12.32.15",
    "10.12.33.15",
    "10.12.35.15",
    "10.12.36.15",
    "10.12.37.15",
    "10.12.38.15",
    "10.12.39.15",
    "10.12.40.15",
    "10.12.41.15",
    "10.12.44.15",
    "10.12.45.15",
    "10.12.46.15",
    "10.12.47.15",
    "172.17.211.15",
    "10.15.3.15",
    "10.15.4.15",
    "10.15.6.15",
    "10.15.7.15",
    "10.15.9.15",
    "10.15.11.15",
    "10.15.12.15",
    "10.15.13.15",
    "10.15.16.15",
    "10.15.17.15",
    "10.15.18.15",
    "10.15.19.15",
    "10.15.23.15",
    "10.15.24.15",
    "10.15.25.15",
    "10.15.27.15",
    "10.15.28.15",
    "10.15.29.15",
    "10.15.30.15",
    "10.15.31.15",
    "10.15.32.15",
    "10.15.33.15",
    "10.15.34.15",
    "10.15.35.15",
    "10.15.36.15",
    "10.15.37.15",
    "172.17.71.15",
    "10.20.3.15",
    "172.17.74.15",
    "10.20.5.15",
    "172.17.76.15",
    "172.17.79.15",
    "10.20.10.15"
  ];

  // List ips = ["10.6.11.157", "10.6.10.182"];
  Timer? timer;
  bool _isloading = true;
  List<Widget> pingContainers = [];
  void timerStart() {
    print('Timer Start');
    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      creatingWidge();
    });
  }

  void creatingWidge() async {
    pingContainers = [];
    try {
      print('funcion is calling');
      final header = {'Content-Type': 'application/json'};
      var body = {'ips': ips};

      final response = await http.post(
          Uri.parse("http://10.0.10.24:4172/ping-ips-new2"),
          body: json.encode(body),
          headers: header);
      if (response.statusCode == 200) {
        dynamic data = json.decode(response.body);
        dynamic ipsData = data['results'];
        // ipsData..sort((a, b) => a['ip'].compareTo(b['ip']));
        for (var item in ipsData) {
          if (item['ttl'] < 100) {
            pingContainers.add(Padding(
              padding: const EdgeInsets.all(4.0),
              child: cardWidget(
                mainText: item['ip'].toString(),
                locName: item['ttl'].toString(),
                clur: Colors.red,
              ),
            ));
          }
          pingContainers.add(Padding(
            padding: const EdgeInsets.all(4.0),
            child: cardWidget(
              mainText: item['ip'].toString(),
              locName: item['ttl'].toString(),
              clur: Colors.green,
            ),
          ));
          print(item);
          setState(() {
            _isloading = false;
          });
        }
      } else {
        print('Something Wrong');
      }
    } catch (e) {
      pingContainers.add(Center(
        child: Text('Something Went Wrong'),
      ));
      setState(() {
        _isloading = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timerStart();
  }

  @override
  Widget build(BuildContext context) {
    int items = ((MediaQuery.of(context).size.width) / 175).floor();
    return Scaffold(
        body: _isloading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : GridView.count(
                crossAxisCount: items,
                childAspectRatio:
                    MediaQuery.of(context).size.width / (items * 175),
                children: pingContainers));
  }
}