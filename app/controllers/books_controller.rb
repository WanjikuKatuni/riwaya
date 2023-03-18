class BooksController < ApplicationController
    # enable create option to work
    protect_from_forgery with: :null_session

    # disable wrap params feature
    wrap_parameters format: []

    # show all books

    def index
        render json: Book.all, except: [:created_at, :updated_at], methods: [:summary], status: :ok
    end

    # show book by ID

    def show
        book = Book.find_by(id: params[:id])
        if book
            render json: book,  except: [:created_at, :updated_at], methods: [:summary], status: :ok
        else
            render json: {error: "Book not found"}, status: :not_found
        end
    end

    # create new book

    def create
        book = Book.create(book_params)
        render json: book, status: :created
    end

    # edit existing book

    def update 
        # find
        book = Book.find_by(id: params[:id])
        if book
            # update
            book.update(book_params)
            render json: book, status: :accepted
        else
            render json: {error: "Book not found"}, status: :not_found
        end
    end

    # delete existing book

    def destroy
        # find book
        book = Book.find_by(id: params[:id])
        if book
            # delete
            book.destroy
            render json: {}
            # head :no_content
        else
            render json: {error: "Book not found"}, status: :not_found
        end
    end






    # increment likes
    def increment_likes
        book = Book.find_by(id: params[:id])
        if book
            book.update(likes: book.likes + 1)
            render json: book
        else
            render json: {error: "Book not found"}, status: :not_found
        end
    end



    private

    def book_params
        params.permit(:title, :author, :genre, :image)
    end


    
end
