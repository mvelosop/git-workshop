// app.ts
import { Book } from "./book";
import { Library } from "./library";

const myLibrary = new Library();

myLibrary.addBook(new Book("The Hobbit", "J.R.R. Tolkien", 1937));
myLibrary.addBook(new Book("1984", "George Orwell", 1949));

console.log(`
Library catalog
===============
`);
myLibrary.listBooks();
