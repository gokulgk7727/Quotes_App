import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;

  const QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(15, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.quote,
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey[599],
              ),
            ),
            const SizedBox(height: 9),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[399],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            TextButton.icon(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
              onPressed: delete,
              icon: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
              label: const Text('Delete', style: TextStyle(color: Colors.white, fontSize: 16),),
            )
          ],
        ),
      ),
    );
  }
}
