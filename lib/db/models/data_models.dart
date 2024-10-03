import 'package:hive/hive.dart';
part 'data_models.g.dart';

@HiveType(typeId: 1)
class ClientTasksModel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  final String tasks;

  @HiveField(2)
  final String description;

  @HiveField(3)
  final DateTime? taskDate;

   @HiveField(4) 
  final String priority; 

  ClientTasksModel(
      {required this.tasks,
      required this.description,
      required this.taskDate,
       required this.priority,
      this.id});
}
