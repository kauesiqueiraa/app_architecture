import 'package:lucid_validation/lucid_validation.dart';
import 'package:sdf_app_architecture/domain/dtos/credentials.dart';

class CredentialsValidator extends LucidValidator<Credentials> {
  CredentialsValidator() {
    ruleFor((c) => c.email, key: 'email')
        .notEmpty()
        .validEmail();
        
    ruleFor((c) => c.password, key: 'password')
        .notEmpty()
        .minLength(6)
        .mustHaveLowercase()
        .mustHaveUppercase()
        .mustHaveNumber()
        .mustHaveSpecialCharacter();
  }
}