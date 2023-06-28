import 'package:bored_api_app/data/notifiers/notifiers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeab1b7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFeab1b7),
        title: const Text(
          'ARE YOU BORED?',
          style: TextStyle(
            color: Color(0xFFc13f57),
            fontFamily: 'Poppins',
            fontSize: 24,
            letterSpacing: 6,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          const SizedBox(height: 50),
          SizedBox(width: 250, child: Image.asset('assets/images/cover.png')),
          const SizedBox(height: 50),
          const Text(
            'SPONTANEOUS',
            style: TextStyle(
                color: Color.fromARGB(255, 125, 40, 56),
                fontSize: 40,
                fontFamily: 'Poppins',
                letterSpacing: 4,
                fontWeight: FontWeight.w900),
          ),
          ValueListenableBuilder(
            valueListenable: dataNotifier,
            builder: (context, data, child) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(31, 255, 0, 0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 80,
                            width: double.infinity,
                            child: Text(
                              data.activity,
                              style: const TextStyle(
                                letterSpacing: -0.3,
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 18,
                                fontFamily: 'Poppins',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'This is a ${data.type} type activity',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          'participants:  ',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          data.participants.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 24,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () async {
          await dataNotifier.value.reset();
        },
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 125, 40, 56),
            border: Border.all(
              width: 3,
              color: const Color.fromARGB(255, 81, 26, 36),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text(
            'NEW ACTIVITY',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
