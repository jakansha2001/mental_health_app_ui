import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:mental_health_app_ui/home/bloc/home_bloc.dart';
import 'package:mental_health_app_ui/home/widgets/emoticon_card.dart';
import 'package:mental_health_app_ui/home/widgets/exercise_tile.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.status == HomeStatus.loaded) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Mood Changed to ${state.mood}',
                style: const TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
          );
        }
      },
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.message,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Text(
                state.mood,
                style: const TextStyle(fontSize: 35),
              );
            },
          ),
        ),
        backgroundColor: Colors.blue[800],
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            return Text(
                              'Hi, Jared! ${state.mood}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                        ),
                        Container(
                          padding: const EdgeInsets.all(
                            15.0,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: const BorderRadius.all(Radius.circular(
                                12.0,
                              ))),
                          child: const Icon(
                            Icons.notifications,
                            size: 28.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Text(
                      DateTime.now().toString(),
                      style: TextStyle(
                        color: Colors.blue[200],
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            10.0,
                          ),
                        ),
                        color: Colors.blue[600],
                      ),
                      padding: const EdgeInsets.all(
                        20.0,
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'How do you feel?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        EmoticonCard(
                          emoticonFace: '😔',
                          mood: 'Badly',
                        ),
                        EmoticonCard(
                          emoticonFace: '😊',
                          mood: 'Fine',
                        ),
                        EmoticonCard(
                          emoticonFace: '😁',
                          mood: 'Well',
                        ),
                        EmoticonCard(
                          emoticonFace: '😃',
                          mood: 'Excellent',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
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
          ),
        ),
      ),
    );
  }
}
