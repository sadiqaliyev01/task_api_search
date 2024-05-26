class Endpoints{
  Endpoints._();
  static const _baseUrl = "https://jsonplaceholder.typicode.com";
  static const comments = "$_baseUrl/comments";
  String search(String email) => "$comments?email=$email";
}