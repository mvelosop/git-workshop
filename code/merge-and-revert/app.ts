// app.ts
import { Book } from "./book";
import { Library } from "./library";

const myLibrary = new Library();

myLibrary.addBook(new Book("The Hobbit", "J.R.R. Tolkien", 1937));
myLibrary.addBook(new Book("1984", "George Orwell", 1949));
myLibrary.addBook(new Book("Foundation", "Isaac Asimov", 1951));
myLibrary.addBook(new Book("The End of Eternity", "Isaac Asimov", 1955));
myLibrary.addBook(new Book("Fahrenheit 451", "Ray Bradbury", 1953));
myLibrary.addBook(new Book("2001: A Space Odyssey", "Arthur C. Clarke", 1968));
myLibrary.addBook(new Book("Dune", "Frank Herbert", 1965));

console.log(`
Library catalog
===============
`);
myLibrary.listBooks();
