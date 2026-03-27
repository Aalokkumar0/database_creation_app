import 'package:flutter/material.dart';
import '../database/store_data.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("datebase creation"),
      ),
      body: ListView.builder(
        itemCount: quote.length,
        itemBuilder: (context, index){

          return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(quote[index]["quote"]!),
                subtitle:Text(quote[index]["Auth"]!),
              ),
          );
        }
        ),
    );
  }
}
