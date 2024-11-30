// ignore_for_file: public_member_api_docs, sort_constructors_first
class Book {
  String name;
  Gener gener;
  Book({
    required this.name,
    required this.gener,
  });
}

enum Gener {
  ScienceFiction,
  Novels,
  Romance,
  Action,
  Horror,
}
