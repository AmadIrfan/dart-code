import 'dart:io';
import 'dart:math';

void main() {
  // question1(takeInput());
  question5();
}

List takeInput() {
  List _list = [];

  print('Enter how much elements you want to add: ');

  int? count = int.parse(stdin.readLineSync().toString());
  for (var i = 0; i < count; i++) {
    print('Enter value ${i + 1} : ');

    String? input = stdin.readLineSync();

    _list.add(input);
  }

  return _list;
}

void question1(List data) {
  final _items = [];
  _items.add(data.first);
  _items.add(data.last);
  print(_items);
}

/*
Write a program that asks the user how many Fibonnaci numbers to generate and then 
generates them. Take this opportunity to think about how you can use functions.
*/

void question2() {
  print('Enter a number you want to generate fibonacci series: ');
  int? count = int.parse(stdin.readLineSync().toString());
  int first = 0;
  int second = 1;
  int next = 0;
  for (var i = 0; i < count; i++) {
    if (i <= 1) {
      next = i;
    } else {
      next = first + second;
      first = second;
      second = next;
    }
    print(next);
  }
}

/* 
Write a program (function) that takes a list and returns a new list that contains all the elements 
of the first list minus all the duplicates.
 */

void question3() {
  List _list = takeInput();
  List _newList = [];
  for (var i = 0; i < _list.length; i++) {
    if (!_newList.contains(_list[i])) {
      _newList.add(_list[i]);
    }
  }
  print(_newList);
}
/* 
Write a program (using functions!) that asks the user for a long string containing multiple 
words. Print back to the user the same string, except with the words in backwards order
 */

void question4() {
  print('Enter a string: ');
  String? input = stdin.readLineSync();
  List _list = input!.split(' ');
  List _newList = [];
  for (var i = _list.length - 1; i >= 0; i--) {
    _newList.add(_list[i]);
  }
  print(_newList.join(' '));
}

/* 
Write a password generator in Dart. Be creative with how you generate passwords - strong 
passwords have a mix of lowercase letters, uppercase letters, numbers, and symbols. The 
passwords should be random, generating a new password every time the user asks for a new 
password. Include your run-time code in a main method.

 */

void question5() {
  String capLetter = 'ABCDEFGHIJKLMNOQRSTUVWXYZ';
  String password = '';
  String smlLetter = 'abcdefghijklmnoqrstuvwxyz';
  String numbers = '1234567890';
  String special = '!@#\$%^&*()_+';
  print('Enter length of password you want to generate : ');
  int? count = int.parse(stdin.readLineSync().toString());
  for (var i = 0; i < count; i++) {
    Random _random = Random();
    int n = _random.nextInt(4);
    switch (n) {
      case 1:
        password += capLetter[_random.nextInt(capLetter.length)];
        break;
      case 2:
        password += smlLetter[_random.nextInt(smlLetter.length)];
        break;
      case 3:
        password += numbers[_random.nextInt(numbers.length)];
        break;
      case 0:
        password += special[_random.nextInt(special.length)];
        break;
      default:
    }
  }
  print('your password is : $password');
}

/* 
Create a program that will play the “cows and bulls” game with the user. The game works like 
this:
• Randomly generate a 4-digit number. Ask the user to guess a 4-digit number. For every 
digit the user guessed correctly in the correct place, they have a “cow”. For every digit 
the user guessed correctly in the wrong place is a “bull.”
• Every time the user makes a guess, tell them how many “cows” and “bulls” they have. 
Once the user guesses the correct number, the game is over. Keep track of the number 
of guesses the user makes throughout the game and tell the user at the end.
 */

void question6() {}
