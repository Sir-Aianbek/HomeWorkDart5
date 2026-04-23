class Book {
  String _title;
  String _author;
  double _rating;

  // Обычный конструктор — принимает title и author
  Book(this._title, this._author) : _rating = 0;

  // Именованный конструктор withRating — принимает title, author и rating
  Book.withRating(this._title, this._author, double rating) : _rating = 0 {
    this.rating = rating;
  }

  // Геттеры
  String get title => _title;
  String get author => _author;
  double get rating => _rating;

  // Сеттер для rating с проверкой диапазона
  set rating(double value) {
    if (value >= 0 && value <= 10) {
      _rating = value;
    } else {
      print('Error: Rating must be between 0 and 10.');
    }
  }

  // Метод вывода информации
  void displayInfo() {
    print('Title: $_title');
    print('Author: $_author');
    print('Rating: $_rating');
  }
}

class Library {
  String name;
  List<Book> _books;

  // Конструктор принимает название библиотеки
  Library(this.name) : _books = [];

  // Добавляет книгу в список
  void addBook(Book b) {
    _books.add(b);
  }

  // Выводит все книги
  void showBooks() {
    print('Library: $name');
    print('Books list:');
    for (int i = 0; i < _books.length; i++) {
      print('${i + 1}. ${_books[i].title}');
    }
  }

  int get length => _books.length;
}

void main() {
  // 1. Книга через обычный конструктор
  Book book1 = Book('Harry Potter', 'J.K. Rowling');

  // 2. Книга через именованный конструктор withRating
  Book book2 = Book.withRating('Sherlock Holmes', 'Arthur Conan Doyle', 9.0);

  // 3. Книга через сеттер рейтинга
  Book book3 = Book('The Great Gatsby', 'F. Scott Fitzgerald');
  book3.rating = 8.5;

  // Создаём библиотеку
  Library cityLib = Library('City Library');

  // Добавляем книги
  cityLib.addBook(book1);
  cityLib.addBook(book2);
  cityLib.addBook(book3);

  // Выводим список книг
  cityLib.showBooks();

  // Выводим количество книг
  print('Total books in library: ${cityLib.length}');
}
