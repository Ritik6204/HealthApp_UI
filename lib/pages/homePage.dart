import 'package:flutter/material.dart';
import 'package:test_app/pages/emoji_faces.dart';
import 'package:test_app/pages/exercise_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.category,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                ),
                label: 'z'),
          ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    //greetings row
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi,Ritik!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '20th Feb , 2024',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.blue[100],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.blue[500],
                        ),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  //search bar
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Search',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How Do You Feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      EmojiFaces(emoji: '😔', emojiText: 'Badly'),
                      EmojiFaces(emoji: '😊', emojiText: 'Fine'),
                      EmojiFaces(emoji: '😁', emojiText: 'Well'),
                      EmojiFaces(emoji: '😄', emojiText: 'Excellent'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.expand_less_rounded)],
                    ),
                    const SizedBox(height: 5),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: const [
                          ExerciseTile(
                            exerciseName: 'Speaking Skills',
                            noOfExercises: '16',
                            icon: Icons.favorite,
                            color: Colors.orange,
                          ),
                          ExerciseTile(
                            exerciseName: 'Reading Speed',
                            noOfExercises: '9',
                            icon: Icons.people,
                            color: Colors.blue,
                          ),
                          ExerciseTile(
                            exerciseName: 'Listening Skills',
                            noOfExercises: '5',
                            icon: Icons.speaker,
                            color: Colors.pink,
                          ),
                          ExerciseTile(
                            exerciseName: 'workout',
                            noOfExercises: '20',
                            icon: Icons.sports_gymnastics,
                            color: Colors.red,
                          ),
                          ExerciseTile(
                            exerciseName: 'Meditation',
                            noOfExercises: '12',
                            icon: Icons.nature,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
