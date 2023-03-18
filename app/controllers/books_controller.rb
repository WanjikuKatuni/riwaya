class BooksController < ApplicationController
    # enable create option to work
    protect_from_forgery with: :null_session

    # disable wrap params feature
    wrap_parameters format: []

    # show all books

    def index
        render json: Book.all, except: [:id, :created_at, :updated_at], methods: [:title_author], status: :ok
    end

    # show book by ID

    def show
        book = find_book
        if book
            render json: book,  except: [:id, :created_at, :updated_at], methods: [:title_author], status: :ok
        else
            render_not_found_response
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
        book = find_book
        if book
            # update
            book.update(book_params)
            render json: book, status: :accepted
        else
            render_not_found_response
        end
    end

    # delete existing book

    def destroy
        # find book
        book = find_book
        if book
            # delete
            book.destroy
            render json: {}
            # head :no_content
        else
            render_not_found_response
        end
    end






    # increment likes
    def increment_likes
        book = find_book
        if book
            book.update(likes: book.likes + 1)
            render json: book
        else
            render_not_found_response
        end
    end



    private

    def book_params
        params.permit(:title, :author, :genre, :image)
    end
    
    # not found
    def render_not_found_response
        render json: {error: "Book not found"}, status: :not_found
    end

    # find book
    def find_book
        Book.find_by(id: params[:id])
    end


    
end
