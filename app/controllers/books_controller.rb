class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
      format.html
      format.js
      format.xml { render xml: @books }
    end
  end

end
