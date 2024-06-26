// ignore: implementation_imports
import 'package:fpdart/src/either.dart';
import 'package:practice/core/Error/failure.dart';
import 'package:practice/features/auth/data/datasources/auth_supabase_data_source.dart';
import 'package:practice/features/auth/domain/repository/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource remoteDataSource;
  const AuthRepoImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, String>> loginWithEmailPassword({required String email, required String pass}) {
    // TODO: implement loginWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpWithEmailPassword({required String name, required String email, required String pass}) {
    // TODO: implement signUpWithEmailPassword
    throw UnimplementedError();
  }

}