import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:project1/db/models/data_models.dart';
import 'package:project1/widget/place_holder.dart';

class TaskDetailScreen extends StatelessWidget {
  final ClientTasksModel task;

  const TaskDetailScreen({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text('The Logo Process',
            style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Task name and details',
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1, 1),
                    blurRadius: 1.0,
                  ),
                ],
                color: const Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                task.description ?? 'No description available', // Handle null description
                style: GoogleFonts.poppins(
                    color: const Color(0xFF858585),
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 16),
            placeHolder('Priority: ${task.priority ?? "No priority"}'), // Handle null priority
            const SizedBox(height: 16),
            placeHolder('Start Date: ${task.taskDate != null ? DateFormat('dd MMM yyyy').format(task.taskDate!) : "No date"}'),
            const SizedBox(height: 16),
            placeHolder('End Date: 20 Mar 2025'), // Static end date, you can make it dynamic if available
          ],
        ),
      ),
    );
  }
}
