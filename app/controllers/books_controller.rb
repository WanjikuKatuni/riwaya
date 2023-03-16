class BooksController < ApplicationController
    def index
        render json:{hello: "riwaya world"}
    end
    
end
