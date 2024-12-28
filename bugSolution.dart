```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions gracefully - log, display error message etc.
    print('An error occurred: $e');
    // Optionally, you can return a default value or handle the error more appropriately.
    // For example: return [];
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!'); 
  } catch (e) {
      print('Error in main: $e'); // Catch exception from fetchData()
  }
}
```