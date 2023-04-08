
import 'package:arzan/src/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';
import '../../core/error/failures.dart';

abstract class ApiRepository{
  Future<Either<Failure,UserEntity>> getUserDetail(); 
}