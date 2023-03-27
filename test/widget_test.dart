import 'dart:io';

void showData() async {
  startTask();
  String account = await accessData();
  fetchData(account);
}

void startTask() {
  print('start task');
}

Future<String> accessData() async {
  String account = '';
  Duration time = Duration(seconds: 3);

  if (time.inSeconds > 2) {
    await Future.delayed(time, ()
    {
      account = '8,500';
      print(account);
    });
  } else {
    String info2 = 'data loaded';
    print(info2);
  }
  return account;
}

void fetchData(String account) {
  String info3 = 'amount : $account';
  print(info3);
}