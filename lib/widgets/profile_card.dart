// lib/widgets/profile_card.dart

import 'package:flutter/material.dart';
import '../models/student.dart';

class ProfileCard extends StatelessWidget {
  final Student student;

  ProfileCard({required this.student});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(student.photoUrl),
            ),
            SizedBox(height: 16),
            Text(
              student.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'NIM: ${student.npm}',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            Text(
              'Jurusan: ${student.jurusan}',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            Text(
              'Kelas: ${student.kelas}',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            Text(
              'Universitas: ${student.universitas}',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
