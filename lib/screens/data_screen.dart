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
        title: Text("Datebase Quotes",style: TextStyle(
      fontSize: 27,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),),
      ),
      body: ListView.builder(
        itemCount: quote.length,
        itemBuilder: (context, index){

          return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(quote[index]["Quotes"]!,style: TextStyle(
                  fontSize: 18,color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w700
                ),),
                subtitle:Text(quote[index]["Auth"]!,style: TextStyle(
                  fontSize: 15,color: Colors.grey,
                  fontWeight: FontWeight.w700
                ),),
              ),
          );
        }
        ),
    );
  }
}
