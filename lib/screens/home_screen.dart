import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/question_model.dart';
import '../widgets/question_widget.dart';
import '../widgets/next_button.dart';
import '../widgets/option_card.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> _questions = [
    Question(id: '10',
        title: 'What is 2 + 2 ?',
        options: {'5':false, '30':false, '4':true, '10':false},
    ),
    Question(id: '11',
      title: 'What is 10 + 20 ?',
      options: {'50':false, '30':true, '40':false, '10':false},
    ),
    Question(id: '10',
      title: 'What is 20 + 20 ?',
      options: {'15':false, '30':false, '40':true, '10':false},
    )];
  int index = 0;
  bool isPressed = false;
  void changeColor(){
    setState(() {
      isPressed = true;
    });
  }
  void nextQuestion(){
    if(index == _questions.length-1){
      return;
    }else{
      setState(() {
        index++;
      });
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text('Quiz App'),
        backgroundColor: background,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            QuestionWidget(question: _questions[index].title,
                indexAction: index,
                totalQuestions: _questions.length,),
                Divider(color: neutral),
            const SizedBox(height: 25.0),
            for(int i=0;i< _questions[index].options.keys.length;i++)
              OptionCard(option: _questions[index].options.keys.toList()[i],
                  color: isPressed ? _questions[index].options.values.toList()[i] == true
                      ? correct : incorrect : neutral,
                  onTap: changeColor ,
              ),

          ],
        ) ,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: NextButton(
          nextQuestion: nextQuestion,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
