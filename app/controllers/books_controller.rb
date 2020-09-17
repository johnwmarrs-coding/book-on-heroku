class BooksController < ApplicationController
	def index
		@books = Book.all()

	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)

		@book.pubdate = book_params["pubdate(3i)"] + "/" + book_params["pubdate(2i)"] + "/" + book_params["pubdate(1i)"]

		if (@book.save())
			redirect_to books_path, notice: "The book was created."
		else
			render 'new'
		end

	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])

		@book.pubdate = book_params["pubdate(3i)"] + "/" + book_params["pubdate(2i)"] + "/" + book_params["pubdate(1i)"]
		if (@book.update(book_params))
			redirect_to books_path, notice: "The book was edited."
		else
			render 'edit'
		end
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy

		redirect_to books_path, alert: "The book was deleted."

	end

	private def book_params
		#Specifies that the form will only allow certain fields
		params.require(:book).permit(:title, :author, :genre, :price, :pubdate)
	end
end
