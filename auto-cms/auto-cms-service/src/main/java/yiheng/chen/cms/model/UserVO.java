package yiheng.chen.cms.model;

import java.awt.print.Book;
import java.util.List;


public class UserVO extends User {

	private List<Book> books;

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}
}