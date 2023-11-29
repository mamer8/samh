abstract class FlightsStates {}

class FlightsInitialState extends FlightsStates {}

// Get Flights states

class GetFlightsSuccessState extends FlightsStates {}

class GetFlightsLoadingState extends FlightsStates {}

class GetFlightsErrorState extends FlightsStates {}

// clear data

class ClearFlightsDataState extends FlightsStates {}
