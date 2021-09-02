import 'dart:async';

void main(){
  getMyPeriodicStream();
  getMyMultiStream();
}

void getMyPeriodicStream(){
  final myPeriodicStream = Stream<int>.periodic(
    Duration(seconds:2), (index) => index++;
   ).take(10);
  
   myPeriodicStream.listen((value) => print(value));
}

void getMyMultiStream(){
  bool isManually = true;
  final myMultiStream = Stream<int>.multi(controller) {
    if(isManually){
      controller.add(1);
      controller.add(2);
      controller.add(3);
      // controller.add(..4 ..5..6..7);
    } else {
      int num = 1000;
      Timer.periodic(Duration(seconds:2)(_){
        controller.add(num++);
      });
    }
  });

  myMultiStream.listen((value) => print(value));
}
