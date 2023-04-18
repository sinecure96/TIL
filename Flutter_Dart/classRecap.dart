class Player {
  final String name;
  int xp;
  String team;

  // flutter에서 많이 쓰는 방식
  Player.fromJson(Map<String, dynamic> playerJson)
    : name = playerJson['name'],
      xp = playerJson['xp'],
      team = playerJson['team'];

  void sayHello() {
    print('hi my name is $name');
  }
}

void main() {
  var apiData = [
    {
      'name': 'nico',
      'xp': 0,
      'team': 'red',
    },
    {
      'name': 'lynn',
      'xp': 0,
      'team': 'red',
    },{
      'name': 'dal',
      'xp': 0,
      'team': 'red',
    },
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}