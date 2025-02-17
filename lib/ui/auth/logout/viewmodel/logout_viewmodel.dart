import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';
import 'package:sdf_app_architecture/data/repositories/auth/auth_repository.dart';

class LogoutViewmodel {
  final AuthRepository _authRepository;

  LogoutViewmodel(this._authRepository);

  late final logoutCommand = Command0(_logout);

  AsyncResult<Unit> _logout() async {
    return _authRepository.logout();
  }
}