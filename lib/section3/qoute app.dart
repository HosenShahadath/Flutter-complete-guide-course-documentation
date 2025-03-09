import 'package:flutter/material.dart';
import 'quote_widgets.dart';
import 'quote.dart';
import 'onlineservice 3.dart';

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Quote>>(
          future: OnlineService3().getQuotes(),
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator(),);
            }
            if(snapshot.hasError){
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }
            if(snapshot.hasData){
              final quotes = snapshot.data!;
              return ListView.builder(
                  itemCount: quotes.length,
                  itemBuilder: (context, index){
                return QuoteWidgets(quote: quotes[index]);
              });
            }else{
              return const Center(child: Text('No data available'),);
            }
          }),
    );
  }
}
