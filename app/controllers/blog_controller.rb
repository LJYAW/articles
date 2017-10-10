class BlogController < ApplicationController

  def index

  end

  def show
  	@article =Article.find(params[:id])
  end

  def new
  	@article=Article.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def article_params

  end
end
