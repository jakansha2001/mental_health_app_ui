import 'package:flutter/material.dart';
import 'package:mental_health_app_ui/home/screens/home_page.dart';
import 'package:mental_health_app_ui/home/widgets/exercise_tile.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(
              16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Greet(),
                Date(),
                SizedBox(
                  height: 25.0,
                ),
                SearchField(),
                SizedBox(
                  height: 25.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.blueAccent,
                    blurRadius: 10,
                    //offset: Offset.infinite,
                  ),
                ],
                color: Colors.grey.shade100,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(
                    35.0,
                  ),
                  topRight: Radius.circular(
                    35.0,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Exercises',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          size: 30,
                        )
                      ],
                    ),
                    Expanded(
                      child: ListView(
                        //how to use ListView.builder in this?
                        children: const [
                          ExerciseTile(
                            exercise: 'Speaking Skills',
                            subExercise: '16 Exercises',
                            icon: Icons.favorite,
                            color: Colors.orange,
                          ),
                          ExerciseTile(
                            exercise: 'Reading Speed',
                            subExercise: '8 Exercises',
                            icon: Icons.person,
                            color: Colors.pink,
                          ),
                          ExerciseTile(
                            exercise: 'Speaking Skills',
                            subExercise: '16 Exercises',
                            icon: Icons.umbrella,
                            color: Colors.red,
                          ),
                          ExerciseTile(
                            exercise: 'Speaking Skills',
                            subExercise: '16 Exercises',
                            icon: Icons.book,
                            color: Colors.yellow,
                          ),
                          ExerciseTile(
                            exercise: 'Speaking Skills',
                            subExercise: '16 Exercises',
                            icon: Icons.music_note,
                            color: Colors.pink,
                          ),
                          ExerciseTile(
                            exercise: 'Speaking Skills',
                            subExercise: '16 Exercises',
                            icon: Icons.mobile_friendly,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
