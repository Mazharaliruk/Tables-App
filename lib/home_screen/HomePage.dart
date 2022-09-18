
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final mycontroller = TextEditingController();
  String num = "0";
  Widget myTextFormFeild(){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Enter the Number",
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            keyboardType: TextInputType.number,
            // controller: mycontroller,
            // also we can fetch the data with help of below method
            onChanged: (val){
              setState(() {
               num = val;
              });
            },
          ),
        ),
        Text("Table of $num")
      ],
    );
  }

// creating the table
  Widget buildTable() {
    if(num.isEmpty){
      num = "0";
    }
    try {
      return Padding(
        padding: const EdgeInsets.only(top: 20,),
        child: Column(
          children: <Widget>[
            for (int i = 1; i <= 10; i++)
              Text("${int.parse(num)} X $i = ${int.parse(num) * i}"),
          ],
        ),
      );
    }catch(e){
      Text("$e");
    }
    return Text("");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              myTextFormFeild(),
              SizedBox(height: 20,),
              buildTable()
            ],
          ),
        ],
      )
    );
  }
}
