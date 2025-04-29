import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section3/Quote%20App/onlineservice.dart';
import 'package:flutter_framework_practice/section3/Quote%20App/widget.dart';
import 'package:flutter_framework_practice/section3/onlineservice.dart';

class QuoteUiScreen extends StatelessWidget {
  const QuoteUiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(future: OnlineServices().getQuotes(), builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(child: CircularProgressIndicator(),);
        }
        if(snapshot.hasError){
          return Center(child: Text('Error: ${snapshot.error}'),);
        }
        if(snapshot.hasData){
          final quotes = snapshot.data!;
          return ListView.builder(
              itemCount: quotes.length,
              itemBuilder: (context,index){
            return Card_Widget(quote: quotes[index]);
          });
        }
        return const Center(child: Text('No data available'));
      }),
    );
  }
}
