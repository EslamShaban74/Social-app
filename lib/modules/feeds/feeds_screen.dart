import 'package:flutter/material.dart';

class FeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(8.0),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 10.0,
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Image(
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: double.infinity,
                  image: NetworkImage(
                      'https://image.freepik.com/free-photo/horizontal-shot-smiling-curly-haired-woman-indicates-free-space-demonstrates-place-your-advertisement-attracts-attention-sale-wears-green-turtleneck-isolated-vibrant-pink-wall_273609-42770.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Communicate with Friends ',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(8.0),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 5.0,
            child: Column(
              children: [
                Image(
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: double.infinity,
                  image: NetworkImage(
                      'https://image.freepik.com/free-photo/horizontal-shot-smiling-curly-haired-woman-indicates-free-space-demonstrates-place-your-advertisement-attracts-attention-sale-wears-green-turtleneck-isolated-vibrant-pink-wall_273609-42770.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Communicate with Friends ',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
