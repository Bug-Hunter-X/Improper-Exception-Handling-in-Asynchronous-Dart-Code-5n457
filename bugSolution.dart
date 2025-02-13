```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      // Provide more specific error message based on status code
      throw Exception('Failed to load data. Status code: ${response.statusCode}, message: ${response.reasonPhrase}');
    }
  } on http.ClientException catch (e) {
    // Handle network errors separately
    print('Network Error: $e');
    return null; // Or show a user-friendly message indicating a network problem
  } on FormatException catch (e) {
    // Handle JSON parsing errors
    print('JSON Parsing Error: $e');
    return null; // Or show an appropriate message
  } catch (e) {
    print('Unexpected error: $e');
    return null; //Handle other errors
  }
}
```