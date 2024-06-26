import 'package:fpdart/fpdart.dart';
import 'package:practice/core/Error/failure.dart';

abstract interface class AuthRepo {
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String pass,
  });
  Future<Either<Failure, String>> loginWithEmailPassword({
    required String email,
    required String pass,
  });
}