
# Flutter && Flutter_Bloc Project Template

An example template for my flutter and bloc projects

## Registered Services

- StorageClient
- DatabaseStorage
- ApiClient

## ApiClient
The API Client class is an interface just like the StorageClient meant to work directly with dio package and it's built in methods

the implemented class is `DioApiClient`

## DioApiClient
The DioAPIClient class extends the API client class which connects directly to the API


## StorageClient
The StorageClient class is an interface meant to work directly with sharedPreferences and it has 3 methods

- read<T>
- write<T>
- delete
- deleteAll

the implemented class is `ShredPrefsImpl`

```dart
final prefs = ShredPrefsImpl();
final someValue = await prefs.read<String>('some-key');
await prefs.write<int>('some-key', 12);
```

## TO BE CONTINUED

### New update will be added weekly, so follow for more...