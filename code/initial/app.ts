// app.ts
import { Book } from "./book";
import { Library } from "./library";

const myLibrary = new Library();

myLibrary.addBook(new Book("The Hobbit", "J.R.R. Tolkien", 1937));
myLibrary.addBook(new Book("1984", "George Orwell", 1949));

console.log("Listing all books in the library:");
myLibrary.listBooks();
