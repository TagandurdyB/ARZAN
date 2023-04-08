import 'package:arzan/src/domain/repositories/api_repository.dart';
import 'package:arzan/src/presentation/provider/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/datasources/remote/api_remote_datasource.dart';
import 'data/repositories/api_repository_impl.dart';
import 'domain/usecases/get_user_detail.dart';
import 'package:http/http.dart' as http;

class Injector extends StatelessWidget {
  final Widget router;
  const Injector({required this.router, super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider<GlobalProvider>(
              create: (_) => GlobalProvider(
                  getUserDetail: GetUserDetail(ApiRepositoryImpl(
                      ApiRemoteDataSourceImpl(http.Client())))))
        ],
        child: router,
      );
}
