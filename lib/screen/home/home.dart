import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/create_task_page/create_task_page.dart';
import 'package:project1/db/functions/db_function.dart';
import 'package:project1/db/models/data_models.dart';
import 'package:project1/task_view_page/task_detail_page.dart';
import 'package:project1/widget/task_card.dart';
import 'package:intl/intl.dart';
import 'package:project1/widget/taskcategory.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    getAllTasks();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://s3-alpha-sig.figma.com/img/a9bb/d589/3b795a181bdc239051fe22fba2c379f5?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nkd3F9wi1qtvAIq3-3bPlLtfAV5t0Vw11YbyuGSYXmbgZEltBlz-a5CiS8K9mH~JThXivlm1g527cUN3PLBYd~-8iOrVTFBv6p8DRwdNfZidC0BFbgH8pPidS7YW1uszQIFltXXPWbWJ7OcPRGluOUf6uySkn7g7KbEh2n-WExKnctMGAphEon7WKDBz9XvFQeK6JpihN24yZY1ZDssp15lp1423YbMebKYGHkYEfNodbkMwpCOAEz57VvewJfZroa5c08oUgg-fwcIS~8HqC9c36WlVUs9a-z-i7C7bxOJyqjlGQkOTETAY14B9oe1VOodpuhvPpHGv2qMOvRj-NA__"),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello",
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            Text(
              "Aswin",
              style: TextStyle(color: Colors.black, fontSize: 18),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Find your task here..',
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 110,
              width: 358,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/8d0d/77b7/127c497b654f05a874d308c016a5eba9?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NqB4j7MWpyoLwzONlmx57jxD45wGb~FD9HiWEtCwRqq5O62p-K1TdbVFJXeUYaSa0yf8V-sbgT2LKcT3GJSPsN-VbiVh15llc-DVEYTbf-lDErHW0gRXidtJo03maZltFCC-uMuFoF-KC7zCT5g0Dd5-n77cS16AYTparQOQ8v55FzQUS6xZUvmtpf9ePOCXWaFLTC7QabSXHIrfsyH9pU9x3Jt5gFbvbRDEponAPC-T4AlSrySXPIN3hjVCXPNtq4JpyCWx5-D0AXWDnZKy~-YKYz5BsnAtZM1RNeFDjseOk1Tgdcsr8qNAfg9zL0yu8AVHVUB2iNufh03WL-gzQQ__",
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total number of task",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "52",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Tasks",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                taskCategory("In Progress", isActive: true),
                taskCategory("To Do"),
                taskCategory("Completed"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
  child: ValueListenableBuilder(
    valueListenable: taskListNotifier,
    builder: (BuildContext ctx, List<ClientTasksModel> clientList, Widget? child) {
      String formatDate(DateTime? date) {
        if (date == null) {
          return "NO date";
        } else {
          return DateFormat('dd MMM yyyy').format(date);
        }
      }

      return ListView.separated(
        itemBuilder: (context, index) {
          final data = clientList[index];
          return InkWell(
            onTap: () {
              // Pass the selected task data to TaskDetailScreen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskDetailScreen(task: data),
                ),
              );
            },
            child: taskCard(
              "Design",
              data.tasks,
              formatDate(data.taskDate),
              "20 Mar 2025",
              data.priority,
              () {
                if (data.id != null) {
                  deletTasks(data.id!);
                } else {
                  print("client id is null");
                }
              },
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: clientList.length,
      );
    },
  ),
),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Color(0xFF0560FD),
              ),
              onPressed: () {},
            ),
            CircleAvatar(
              backgroundColor: const Color(0xFF0560FD),
              radius: 30,
              child: IconButton(
                icon: const Icon(Icons.add, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateTaskPage()),
                  );
                },
              ),
            ),
            IconButton(
              icon: const Icon(Icons.person_outline, color: Colors.black45),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
