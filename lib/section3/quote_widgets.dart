import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteWidgets extends StatelessWidget {
  final Quote quote;
  const QuoteWidgets({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            '- ${quote.from}',
            style: const TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
          )
        ],
      ),
      ),
    );
  }
}
