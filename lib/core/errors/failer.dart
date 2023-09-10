abstract class Failer {
  final String errorMsg;

  Failer({required this.errorMsg});
}

class ServerFailer extends Failer {
  ServerFailer({required super.errorMsg});
}
