import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:favotiteapp/providers/counter.dart';
import 'package:provider/provider.dart';

class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({super.key});

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${context.watch<Couter>().number}",
              style: const TextStyle(fontSize: 40.0),
            ),
            const Gap(30),
            ElevatedButton.icon(
              onPressed: () {
                context.read<Couter>().increment();
              },
              icon: const Icon(Icons.add),
              label: const Text("Increase"),
            ),
          ],
        ),
      ),
    );
  }
}
