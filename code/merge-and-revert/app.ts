// app.ts
import { Book } from "./book";
import { Library } from "./library";

const myLibrary = new Library();

myLibrary.addBook(new Book("The Hobbit", "J.R.R. Tolkien", 1937));
myLibrary.addBook(new Book("1984", "George Orwell", 1949));
myLibrary.addBook(new Book("Harry Potter and the Philosopher's Stone", "J.K. Rowling", 1997));
myLibrary.addBook(new Book("Foundation", "Isaac Asimov", 1951));

console.log(`
Comprehensive Library Catalog
=============================
`);
myLibrary.listBooks();
