import '../../../../../core/app_export.dart';
import '../../../data/models/flights_response.dart';

class FlightsCubit extends Cubit<FlightsStates> {
  FlightsCubit() : super(FlightsInitialState());

  static FlightsCubit get(context) => BlocProvider.of(context);

void clearFlightsData(){
  flightResponse =FlightResponse();
  emit(ClearFlightsDataState());
}

  FlightResponse flightResponse =FlightResponse();
  void searchFlights() {
    emit( GetFlightsLoadingState());
    DioClient.getData(url: eSearch,).then((value) {

      flightResponse = FlightResponse.fromJson(value.data);

      emit( GetFlightsSuccessState());
    }).catchError((error) {
      emit( GetFlightsErrorState());
      print(error.toString());
    });
  }




}
