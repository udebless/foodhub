import 'package:bloc/bloc.dart';
import 'package:foodhub/statemanagement_app/cubit/app_cubit_state.dart';
import 'package:foodhub/statemanagement_app/model/data_model.dart';
import 'package:foodhub/statemanagement_app/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailpage(Datamodel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
