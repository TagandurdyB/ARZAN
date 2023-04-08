import 'package:arzan/src/core/error/failures.dart';
import 'package:arzan/src/domain/entities/user_entity.dart';
import 'package:arzan/src/domain/repositories/api_repository.dart';
import 'package:dartz/dartz.dart';

import '../../core/error/exeption.dart';
import '../datasources/remote/api_remote_datasource.dart';

class ApiRepositoryImpl implements ApiRepository {
  final ApiRemoteDataSource apiRemoteDataSource;

  ApiRepositoryImpl(this.apiRemoteDataSource);

  @override
  Future<Either<Failure, UserEntity>> getUserDetail() async {
    try {
      final user = await apiRemoteDataSource.getRometeUserDetal();
      return Right(user);
    } on ServerExeption {
      return Left(ServerFailure());
    }
  }
  
}
