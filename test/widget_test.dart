import 'package:flutter/material.dart';
import 'package:line_graph/circle_progress.dart';
import 'package:line_graph/expense_graph.dart';
import 'package:line_graph/expense_income.dart';
import 'package:line_graph/visa_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                children: [
                  const Text(
                    "History",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.grey.shade500,
                      size: 18,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Row(
                children: const [
                  VisaCard(),
                  ExpenseIncomeData(),
                ],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 10.0,
              ),
              child: SizedBox(
                height: 340,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Analytics",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const ExpenseGraph(),
                    const CircleProgress(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.pink.withOpacity(0.6),
                          ),
                        ),
                        child: BottomNavigationBar(
                          showSelectedLabels: false,
                          items: [
                            BottomNavigationBarItem(
                              backgroundColor: Colors.grey.shade900,
                              icon: const Icon(
                                Icons.bar_chart,
                                color: Colors.grey,
                              ),
                              label: "",
                            ),
                            BottomNavigationBarItem(
                              backgroundColor: Colors.grey.shade900,
                              icon: const Icon(
                                Icons.add_card,
                                color: Colors.grey,
                              ),
                              label: "",
                            ),
                            BottomNavigationBarItem(
                              backgroundColor: Colors.grey.shade900,
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.grey,
                              ),
                              label: "",
                            ),
                            BottomNavigationBarItem(
                              backgroundColor: Colors.grey.shade900,
                              icon: const Icon(
                                Icons.settings,
                                color: Colors.grey,
                              ),
                              label: "",
                            ),
                          ],
                        ),
                      ),
                    ),
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
