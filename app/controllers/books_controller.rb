class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]
  before_action ->{ @categories = Category.pluck(:name, :id) }, only: %i[new create]

  def search
    if params[:search].present?
      @books = Book.search(params[:search])
    else
      @books = Book.all
    end
  end

  def index
    if params[:category].blank?
      @books = Book.all.order("created_at DESC").paginate(:page => params[:page])
    else
      @category_id = Category.find_by(name: params[:category]).id
      @books = Book.where(:category_id => @category_id).order("created_at DESC").paginate(:page => params[:page])
    end
  end

  def show
    @reviews =  @book.reviews.order("created_at DESC")
    unless @reviews.present?
     @avg_review = 0
    else
     @avg_review = @reviews.average(:rating).present? ? @reviews.average(:rating).round(2) : 0
    end
  end

  def new
    @book = current_user.books.build
  end

  def create
    @book = current_user.books.build(book_params)
    @book.category_id = params[:category_id]

    if @book.save
      redirect_to book_path(@book)
    else
      render 'new'
    end
  end

  def edit
    @categories = Category.all.map{ |c| [c.name, c.id] }
  end

  def update
    @book.category_id = params[:category_id]
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render 'edit'
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :author, :category_id, :book_img)
  end

  def find_book
    @book = Book.find(params[:id])
  end

end
