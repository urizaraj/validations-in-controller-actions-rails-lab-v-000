class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)

    return render :new unless @author.valid?

    @author.save
    redirect_to author_path(@author)
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
