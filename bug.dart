```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final jsonData = jsonDecode(response.body);
      // ... process jsonData ...
    } else {
      // Handle error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions (network errors, JSON parsing errors, etc.)
    print('Error: $e');
    // Consider rethrowing the error or handling it appropriately based on your app's needs
    rethrow; // Re-throws the exception to be handled by a higher level if needed
  }
}
```