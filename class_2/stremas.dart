import 'dart:async';

Stream<int> someNumbers() async* {
  for (int i = 0; i < 12; i++) {
    await Future.delayed(Duration(seconds: 3));
    yield i;
  }
}

Future<void> main () async{
  await someNumbers().listen((value){
    print(value);

  });
}