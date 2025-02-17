import 'package:result_dart/result_dart.dart';
import 'package:sdf_app_architecture/data/services/client_http.dart';
import 'package:sdf_app_architecture/domain/dtos/credentials.dart';
import 'package:sdf_app_architecture/domain/entities/user_entity.dart';
import 'package:sdf_app_architecture/data/exceptions/exceptions.dart';

class AuthClientHttp {
  final ClientHttp _clientHttp;

  AuthClientHttp(this._clientHttp);

  AsyncResult<LoggedUser> login(Credentials credentials) async {
    // SE FOR RODAR POR API OU BANCO
    // final response = await _clientHttp.post('/login', {
    //   'email': credentials.email,
    //   'password': credentials.password,
    // });

    // return response.map((response) {
    //   return LoggedUser.fromJson(response.data);
    // });

    // MOCK
    await Future.delayed(const Duration(seconds: 2));
    // return Success(LoggedUser(
    //   email: 'kaue@flutter.com',
    //   id: 1,
    //   name: 'Kaue Siqueira',
    //   refreshToken: '1234567890',
    //   token: '1234567890',
    // ));

    return Failure(Exception('Error on login'));
  }
}