# blank_street_excersise

Excersise for blank_street Case Study

## General Information about the code structure


1. models: Contains the models used by the application, the models are the responses returned by the API, currently we have 2 models
   - location: The location response
   - opening_hours: The opening hours map returned in the location
2. components: General components used across the app such as erro component
3. config: Contains the configuration for the app, such as the API URL 
4. networking: Contains the base class to interact with the API, it is currently using the dio package
5. services: Wrapper over the networking part, handles the part of parsing the json response returned from the networking level into app models
6. user_location: Helper function and singelton to handle the location of the user to calculate the distance with the location
7. app_date: Contains util functions for the closing status of the store
8. screens: Contains the screens of the application, currently it is only one screen which is the `location_screen`



## Bloc Architecture 

We are using bloc to handle states in the application. Here is a breakdown of the files and the logic used 

- [Location Screen Event](./lib/screens/location_screen/bloc/location_screen_event.dart): Contains all the events that the screen will send to the bloc, for example the screen will ask the bloc to load the data, this is an event
- [Location Screen State](./lib/screens/location_screen/bloc/location_screen_state.dart): Contains the state parameters, for example the list of locations obtained from the api, the search query the user is searching for, etc...

- [Location Screen Bloc](./lib/screens/location_screen/bloc/location_screen_bloc.dart): Contains the logic of mapping the events to new states, for example, when the event of loading data occurs, the bloc will release a state of loading, then it will release a state loaded with locations list, or an error if an error occurred


## Key points to consider

1. The search should be on the API, but for the sake of the case study it was done locally

2. Displaying the locations should be on google maps, but it is for the case study

3. We can have pagination wiht the api, it was done locally with the view more, but the code can be updated to use the API


Let me know if you have any questions 😊


