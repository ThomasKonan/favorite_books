class Api::BooksController < ApplicationController
def index
  @books = Book.all
  render "index.json.jb"
end

def create
  @book = Book.new(
  title: params[:title]
  author: params[:author]
  year: params[:year]
  )
  @book.save
  render "show.json.jb"
end

def show
  @book = Book.find_by(id: params[:id])
  render "show.json.jb"
end

def update
  @book = Book.find_by(id: params[:id])
  @book.title = params[:title] || book.title
  @book.author = params[:author] || book.author
  @book.year = params[:year] || book.year
  @book.save
  render "show.json.jb"
end

def destroy
  @book = Book.find_by(id: params[:id])
  @book.destroy
end


end
