import 'dart:core';

class Actor {
  final String idActor;
  final String nameActor;
  final String imgActor;
  final String idMovie;

  Actor(this.idActor, this.nameActor, this.imgActor, this.idMovie);

  static List<Actor> MockActor() {
    List<Actor> rs = [];
    rs.add(Actor('AT001', 'David', 'assets/actor/david.jpg', 'MV001'));
    rs.add(Actor('AT002', 'Robert', 'assets/actor/robert.jpg', 'MV001'));
    rs.add(Actor('AT003', 'Scarlett', 'assets/actor/scarlett.jpg', 'MV002'));
    rs.add(Actor('AT004', 'Liu', 'assets/actor/liu.jpg', 'MV003'));
    rs.add(Actor('AT005', 'Jetli', 'assets/actor/jetli.jpg', 'MV001'));
    return rs;
  }
}
