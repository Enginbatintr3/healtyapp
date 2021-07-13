import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/data/userdata.dart';
import 'package:flutter_application_6/models/result.dart';
import 'package:flutter_application_6/utils/IconWidget.dart';
import 'package:flutter_application_6/utils/contants.dart';
import 'package:flutter_application_6/utils/myco.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String selected = "";
  double smoke = 0.0;
  double spor = 0.0;
  int height = 170;
  int weight = 75;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "YAŞAM HESAPLAMA",
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: mycon(
                    child: MyCard("BOY"),
                  ),
                ),
                Expanded(
                  child: mycon(
                    child: MyCard("KİLO"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: mycon(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Haftada Kaç Gün Spor Yapıyorsunuz",
                    style: style,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    spor.round().toString(),
                    style: bluestyle,
                  ),
                  Slider(
                    min: 0,
                    max: 7,
                    value: spor,
                    onChanged: (double newValue) {
                      setState(() {
                        spor = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: mycon(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Günde Kaç Sigara Tüketiyorsunuz",
                    style: style,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    smoke.round().toString(),
                    style: bluestyle,
                  ),
                  Slider(
                    min: 0,
                    max: 30,
                    value: smoke,
                    onChanged: (double newValue) {
                      setState(() {
                        smoke = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: mycon(
                    function: () {
                      setState(() {
                        selected = "KADIN";
                      });
                    },
                    color: selected == "KADIN"
                        ? Colors.lightBlue.shade100
                        : Colors.white,
                    child: IconWidget(
                      iconData: FontAwesomeIcons.venus,
                      selected: "KADIN",
                    ),
                  ),
                ),
                Expanded(
                  child: mycon(
                    function: () {
                      setState(() {
                        selected = "ERKEK";
                      });
                    },
                    color: selected == "ERKEK"
                        ? Colors.lightBlue.shade100
                        : Colors.white,
                    child: IconWidget(
                      iconData: FontAwesomeIcons.mars,
                      selected: "ERKEK",
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    UserData(
                        height: height,
                        weight: weight,
                        spor: spor,
                        smoke: smoke,
                        selected: selected),
                  ),
                ),
              );
            },
            child: Expanded(
              child: Container(
                padding: const EdgeInsets.all(13),
                decoration: const BoxDecoration(color: Colors.white),
                child: const Center(
                  child: Text("Hesapla"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row MyCard(String name) {
    return Row(
      children: [
        const SizedBox(
          width: 15,
        ),
        RotatedBox(
          child: Text(
            name,
            style: style,
          ),
          quarterTurns: -1,
        ),
        const SizedBox(
          width: 10,
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            name == "BOY" ? height.toString() : weight.toString(),
            style: bluestyle,
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(36, 36),
                ),
                onPressed: () {
                  setState(() {
                    name == "BOY" ? height++ : weight++;
                  });
                },
                child: const Icon(
                  FontAwesomeIcons.plus,
                  size: 10,
                )),
            const SizedBox(
              width: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(36, 36),
              ),
              onPressed: () {
                setState(() {
                  name == "BOY" ? height-- : weight--;
                });
              },
              child: const Icon(
                FontAwesomeIcons.minus,
                size: 10,
              ),
            )
          ],
        )
      ],
    );
  }
}
