import '../../../../../core/app_export.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  /// change language

  bool isEnglish = CacheHelper.getData(key: 'isEnglish') ?? false;

  void changeLanguage() {
    isEnglish = !isEnglish;
    CacheHelper.saveData(key: 'isEnglish', value: isEnglish);
    emit(AppChangeLanguageState());
  }

  int currentPassengerIndex = 0;
  int currentFlightIndex = 0;

  String fromShort = '';
  String from = '';
  String to = '';
  String toShort = '';
  String departure = '';
  String adults = '';
  String children = '';
  String flightType = '';
  String passengerType = '';

  void getFlightIndex(int index) {
    currentFlightIndex = index;
    emit(FlightChangeState());
  }

  void getPassengerIndex(int index) {
    currentPassengerIndex = index;
    emit(PassengerChangeState());
  }


  void clearHomeData(){
    currentPassengerIndex = 0;
    currentFlightIndex = 0;
    fromShort = '';
    from = '';
    to = '';
    toShort = '';
    departure = '';
    adults = '';
    children = '';
    flightType = '';
    passengerType = '';

    emit(ClearHomeDataState());
  }




}
