import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget taskCard(String taskText, String taskTitle, String startDate,
    String endDate, String priority, final VoidCallback? ontap) {
  return Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.grey)),
    elevation: 0,
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                taskText,
                style: GoogleFonts.poppins(
                    color: const Color(0xFF0560FD),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              PopupMenuButton(
                color: Colors.white,
                onSelected: (String result) {},
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem(
                    value: 'edit',
                    child: Text("Edit"),
                  ),
                  PopupMenuItem(
                    onTap: ontap,
                    value: 'delete',
                    child: Text("Delete"),
                  )
                ],
                icon:
                    const Icon(Icons.more_horiz_rounded, color: Colors.black54),
              ),
            ],
          ),
          Text(
            taskTitle,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(
                Icons.calendar_today_outlined,
                size: 14,
                color: Color(0xFF0560FD),
              ),
              const SizedBox(width: 4),
              Text(startDate, style: const TextStyle(color: Colors.grey)),
              const SizedBox(width: 10),
              const Icon(Icons.arrow_forward, size: 14, color: Colors.grey),
              const SizedBox(width: 4),
              Text(endDate, style: const TextStyle(color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF0560FD),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  priority,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
