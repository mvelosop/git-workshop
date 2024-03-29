// library.ts
import { Book } from "./book";

export class Library {
    private books: Book[] = [];

    public addBook(book: Book): void {
        this.books.push(book);
    }

    public listBooks(): void {
        const titleLength = this.books.reduce((max, book) => Math.max(max, book.title.length), 0);
        const authorLength = this.books.reduce((max, book) => Math.max(max, book.author.length), 0);

        // Add a header
        const headerTitle = "Title".padEnd(titleLength, ' ');
        const headerAuthor = "Author".padEnd(authorLength, ' ');
        console.log(`${headerTitle} | ${headerAuthor} | Year`);
        console.log(`${"-".repeat(titleLength)} | ${"-".repeat(authorLength)} | ----`);

        this.books.forEach(book => {
            const paddedTitle = book.title.padEnd(titleLength, ' ');
            const paddedAuthor = book.author.padEnd(authorLength, ' ');
            console.log(`${paddedTitle} | ${paddedAuthor} | ${book.year}`);
        });

        console.log("\n");
    }}
