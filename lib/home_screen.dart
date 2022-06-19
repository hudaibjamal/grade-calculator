import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
  var textController=TextEditingController();

String grade ="";

String calculate(int grade){
if (grade>=90){
  return "A";
}
else if (grade<80){
  return "B";
  
}
  else if (grade>70){
    return "C";
  } 
else {
  return "F";
}
}

return Scaffold(
  appBar: AppBar(backgroundColor: Colors.pink ,title: Text("Grade Calculator"),),
  body:Center(
    child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
      Container(width: 220,
      height: 70,
        child: TextField(
          controller: textController, 
 
          decoration: InputDecoration(
            hintText: "%Type y our score!",
            border: OutlineInputBorder(borderRadius:BorderRadius.circular(50) )
          ), 
        ),
      ),
      Container(width: 180,
      height: 60,
        child: ElevatedButton(onPressed: (){
          setState(() {
            int number= int.parse( textController.text);
                     grade = calculate(number); 

          });
        }, child: Text("Submit"),
        style:ElevatedButton.styleFrom( primary: Colors.pink,
        shape: StadiumBorder()),),
      ),
      Text(grade)],),
  )
);
  }
}

void scoreCal (){



}