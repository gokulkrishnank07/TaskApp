import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:project1/db/models/data_models.dart';

ValueNotifier<List<ClientTasksModel>> taskListNotifier = ValueNotifier([]);

Future<void> addTasks(ClientTasksModel value) async {
  final clientTask = await Hive.openBox<ClientTasksModel>('client_Tasks');
  final _id = await clientTask.add(value);
  value.id = _id;
  taskListNotifier.value.add(value);
  taskListNotifier.notifyListeners();
  // print(value.toString());
}

Future<void> getAllTasks() async {
  final clientTask = await Hive.openBox<ClientTasksModel>('client_Tasks');
  taskListNotifier.value.clear();

  taskListNotifier.value.addAll(clientTask.values);
  taskListNotifier.notifyListeners();
}

Future<void> deletTasks(int id) async {
  final clientTask = await Hive.openBox<ClientTasksModel>('client_Tasks');
  await clientTask.delete(id);
  getAllTasks();
}
