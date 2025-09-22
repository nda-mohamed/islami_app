import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../design.dart';
import '../../providers/MostRecentProvider.dart';

class MostRecentSlider extends StatefulWidget {
  MostRecentSlider({super.key});

  @override
  State<MostRecentSlider> createState() => _MostRecentSliderState();
}

class _MostRecentSliderState extends State<MostRecentSlider> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MostRecentProvider provider = Provider.of<MostRecentProvider>(context);
    var visitedChapters = provider.getMostRecentChapters();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12),
        Text('Most Recent'),
        SizedBox(height: 12),
        Container(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).colorScheme.primary,
                ),
                height: 150,
                width: MediaQuery.of(context).size.width * .7,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(child: Container()),
                        Expanded(
                          child: Image.asset(
                            AppImages.imageMostRecent,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          visitedChapters[index].arabicName,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(color: Colors.black),
                        ),
                        Text('text1'),
                        Text('text1'),
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) =>
                SizedBox(width: 24, height: 1),
            itemCount: visitedChapters.length,
          ),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}
