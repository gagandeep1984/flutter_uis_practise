## Project :  app_auth_getx

A flutter project which demonstrates the simple auth based UI developed using **GetX** package for Dependency Injection, Route Navigation and Reactive Variables using *Obx* Widget 

<u>Inspiration</u> : (Lazy Techno)
  - https://github.com/Amanullahgit/Flutter-Getx-Rest-API-Authentication/
  - https://www.youtube.com/watch?v=h-D_kvXYmDo

## Packages:
    - get ( aka GetX ) - for DI, Navigation and Reactive variables using Obx widget
    - shared_preference
    - http


## 1. <u>Files</u>
  - main.dart  ( Entrypoint )

  - widgets
        1. input_field.dart
        2. button.dart

  - lib

      main.dart

      utils\
          api_endpoints.dart
      controllers\
            ( login / registeration )_controller.dart
      screens\
            - auth_screen.dart  ( Authentication single screen - having Register and Login Fields )
            - home_screen.dart  ( Dashboard )
      widgets\
          ( input_field / button ).dart
