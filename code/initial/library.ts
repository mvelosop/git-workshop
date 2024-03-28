// library.ts
import { Book } from "./book";

export class Library {
    private books: Book[] = [];

    public addBook(book: Book): void {
        this.books.push(book);
    }

    public listBooks(): void {
        this.books.forEach(book => {
            console.log(`${book.title} by ${book.author}, published in ${book.year}`);
        });
    }
}
