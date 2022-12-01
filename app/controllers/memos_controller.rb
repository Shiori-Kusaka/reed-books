class MemosController < ApplicationController

  def create
    @memo = Memo.create(memo_params)
    redirect_to "/books/#{@memo.book.id}"
    # render json:{ memo: @memo } 
  end

  def destroy
    
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to "/books/#{memo.book.id}"
  end

  def edit
    @book = Book.find_by(id: params[:book_id])
    @memo = Memo.find(params[:id])
  end

  def update
    # binding.pry
    memo = Memo.find(params[:id])
    memo.update(memo_params)
    redirect_to "/books/#{memo.book.id}"
  end

  private
  
  def memo_params
    @book = Book.find_by(id: params[:book_id])
    params.permit(:title, :text).merge(user_id: current_user.id, book_id: @book.id)
  end
end
