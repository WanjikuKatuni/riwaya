class BooksController < ApplicationController
    def index
        books = Book.all
        render json: books, except: [:created_at, :updated_at], methods: [:summary]
    end

    def show
        book = Book.find_by(id: params[:id])
        if book
            render json: book,  except: [:created_at, :updated_at], methods: [:summary]
        else
            render json: {error: "Book not found"}, status: 404
        end
    end
    
end
