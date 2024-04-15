import 'package:http/http.dart' as http;

class HttpClient {
  final String _baseUrl = 'https://jsonplaceholder.typicode.com'; // Базовый URL

  // Создаем приватное статическое поле для хранения единственного экземпляра класса
  static final HttpClient _singleton = HttpClient._internal();

  // Приватный конструктор
  HttpClient._internal();

  // Фабричный метод, возвращающий единственный экземпляр класса
  factory HttpClient() {
    return _singleton;
  }

  // Метод для выполнения GET-запроса с учетом базового URL
  Future<http.Response> get({required String path}) async {
    return await http.get(Uri.parse('$_baseUrl/$path'));
  }

  // Метод для выполнения POST-запроса с учетом базового URL
  Future<http.Response> post(String path, {Map<String, String>? headers, dynamic body}) async{
    return await http.post(
      Uri.parse('$_baseUrl$path'),
      headers: headers,
      body: body,
    );
  }

// Другие методы для других типов запросов и настроек...
}
