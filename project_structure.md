.
├── assets
│   ├── fonts
│   │   └── valorant_font.ttf
│   └── raw
│       └── bg.json
├── lib
│   ├── data
│   │   ├── di
│   │   │   └── data_module.dart
│   │   ├── remote
│   │   │   ├── agents_api_services.dart
│   │   │   └── agents_api_services.g.dart
│   │   └── agents_repository_ipml.dart
│   ├── domain
│   │   ├── di
│   │   │   └── domain_module.dart
│   │   ├── model
│   │   │   ├── agent.dart
│   │   │   ├── agent.g.dart
│   │   │   ├── base_response.dart
│   │   │   └── base_response.g.dart
│   │   └── repository
│   │       └── agents_repository.dart
│   ├── presentation
│   │   ├── di
│   │   │   └── presentation_module.dart
│   │   └── screens
│   │       └── agents
│   │           ├── agent_list_screen.dart
│   │           ├── agent_list_state.dart
│   │           ├── agent_list_state.freezed.dart
│   │           └── agent_list_view_model.dart
│   ├── shared
│   │   ├── theme
│   │   │   ├── app_color.dart
│   │   │   ├── app_theme.dart
│   │   │   └── app_type.dart
│   │   └── app_exception.dart
│   └── main.dart
├── test
│   ├── agent_list_screen_widget_test.dart
│   ├── agents_repository_integration_test.dart
│   └── app_exception_test.dart
├── LICENSE
├── analysis_options.yaml
└── pubspec.yaml
