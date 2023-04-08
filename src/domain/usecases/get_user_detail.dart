import 'package:arzan/src/domain/entities/user_entity.dart';
import 'package:arzan/src/domain/repositories/api_repository.dart';
import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';

class GetUserDetail {
  final ApiRepository repository;
  GetUserDetail(this.repository);

  Future<Either<Failure, UserEntity>> execute() async =>
      await repository.getUserDetail();
}
