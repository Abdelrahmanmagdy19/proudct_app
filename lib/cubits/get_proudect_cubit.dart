import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proudect_app/cubits/get_proudect_states.dart';
import 'package:proudect_app/models/peoudect_model.dart';
import 'package:proudect_app/services/proudect_services.dart';

class GetProudectCubit extends Cubit<ProudectStates> {
  GetProudectCubit() : super(ProudectIntialStates());
  late List<ProudectModel> proudectModel;
  Future<List<ProudectModel>> getProudect() async {
    try {
      proudectModel = await ProudectServices(Dio()).hetHttp();
      emit(ProudectIntialStates());
    } catch (e) {
      emit(ProudectFiliarStates());
    }
    return proudectModel;
  }
}
