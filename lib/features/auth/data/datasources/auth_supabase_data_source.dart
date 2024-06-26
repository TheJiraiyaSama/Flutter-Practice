import 'package:practice/core/Error/exceptions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signUpwithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  Future<String> loginwithEmailPassword({
    required String email,
    required String password,
  });
}

class AuthSupabaseDataSourceImp implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;
  AuthSupabaseDataSourceImp(this.supabaseClient);

  @override
  Future<String> loginwithEmailPassword({
    required String email,
    required String password,
  }) { 
    // TODO: yet to finish implementation
    throw UnimplementedError();
  }

  @override
  Future<String> signUpwithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth.signUp(
        password: password,
        email: email,
        data: {
          'name': name,
        } 
      );
      if (response.user==null){
        throw const ServerExcpetion('There aint such neg like dat fam');
      }
      return response.user!.id;
    } catch (e) {
      throw ServerExcpetion(e.toString());
    }
  }
}
