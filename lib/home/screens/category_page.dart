import 'package:flutter/material.dart';
import 'package:mental_health_app_ui/home/widgets/bottom_sheet_header_title.dart';
import 'package:mental_health_app_ui/home/widgets/category_grid.dart';
import 'package:mental_health_app_ui/home/widgets/date.dart';
import 'package:mental_health_app_ui/home/widgets/exercise_tile.dart';
import 'package:mental_health_app_ui/home/widgets/greet.dart';
import 'package:mental_health_app_ui/home/widgets/search_field.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const BottomNavBar(
      //   currentIndex: 1,
      // ),
      backgroundColor: Colors.blue[800],
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
                    const BottomSheetHeaderTitle(
                      titleText: 'Category',
                    ),
                    Expanded(
                      child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(20),
                        //crossAxisSpacing: 10,
                        //mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: [
                          CategoryGrid(
                            category: 'Relationship',
                            color: Colors.purple.shade500,
                          ),
                          CategoryGrid(
                            category: 'Career',
                            color: Colors.blue.shade300,
                          ),
                          CategoryGrid(
                            category: 'Education',
                            color: Colors.orange.shade500,
                          ),
                          CategoryGrid(
                            category: 'Other',
                            color: Colors.red.shade500,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const BottomSheetHeaderTitle(
                      titleText: 'Consultant',
                    ),
                    Expanded(
                      child: ListView(
                        //how to use ListView.builder in this?
                        children: const [
                          ExerciseTile(
                            exercise: 'Bobby Singer',
                            subExercise: 'Education',
                            icon: Icons.my_library_music,
                            color: Colors.green,
                          ),
                          ExerciseTile(
                            exercise: 'Dean Winchester',
                            subExercise: 'Career',
                            icon: Icons.badge_outlined,
                            color: Colors.red,
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
