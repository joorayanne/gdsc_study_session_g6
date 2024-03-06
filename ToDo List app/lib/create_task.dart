import 'package:firstpage/taskmanager.dart';
import 'package:firstpage/taskmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class createTask extends StatefulWidget {
  createTask({super.key, required this.title});

  final String title;
  @override
  State<createTask> createState() => _createTaskState();
}

class _createTaskState extends State<createTask> {
  @override
  final _formKey = GlobalKey<FormState>();
  final _mainTask = TextEditingController();
  final _description = TextEditingController();
  DateTime selectDate = DateTime.now();

  final TextStyle customTextStyle = const TextStyle(
    color: const Color.fromARGB(255, 244, 105, 54),
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Create Tasks'),
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                //navigate to homepage
                Navigator.pushNamed(context, '/tasks');
              },
              icon: Icon(Icons.chevron_left)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
              const Text(
                "Main Task Name",
                style: TextStyle(
                  color: const Color.fromARGB(255, 244, 105, 54),
                  fontSize: 20.0,
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: TextField(
                  controller: _mainTask,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "UI/UX App Design, 29, 2023",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Due Date",
                style: TextStyle(
                  color: const Color.fromARGB(255, 244, 105, 54),
                  fontSize: 20.0,
                ),
              ),
              TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                  labelText:
                      '(yy/dd/mm) --- ${selectDate.year}/${selectDate.day}/${selectDate.month}',
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),

                  // Date Picker Icon
                  suffixIcon: InkWell(
                    onTap: () async {
                      final DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: selectDate,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));

                      if (picked != selectDate) {
                        setState(() {
                          selectDate = picked!;
                        });
                      }
                    },
                    child: Icon(
                      Icons.calendar_month,
                      color: Theme.of(context).primaryColor,
                      size: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Description",
                style: TextStyle(
                  color: const Color.fromARGB(255, 244, 105, 54),
                  fontSize: 20.0,
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: TextField(
                  controller: _description,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Insert Description",
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Task newTask = Task(
                            title: _mainTask.text.trim(),
                            description: _description.text.trim(),
                            date:
                                '(yy/dd/mm) --- ${selectDate.year}/${selectDate.day}/${selectDate.month}',
                            isDone: false);
                        // Adding the new task and add to our task list
                        Provider.of<TaskManager>(context, listen: false)
                            .addTask(newTask);
                        _mainTask.clear();
                        _description.clear();

                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Task Added!'),
                          backgroundColor: Colors.blue,
                          duration: Duration(seconds: 1),
                        ));

                        Navigator.of(context).pop();
                      }
                    },
                    style: ButtonStyle(
                      shape: const MaterialStatePropertyAll(StadiumBorder()),
                      backgroundColor: MaterialStatePropertyAll(
                        Theme.of(context).primaryColor,
                      ),
                    ),
                    child: const StyledText(
                        text: 'Add task',
                        textFontSize: 18,
                        textColor: Colors.white,
                        isBold: true),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
