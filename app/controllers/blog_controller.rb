class BlogController < ApplicationController

  def index
    scope = Article
    @articles = scope.all
    @total = scope.all.count
  end

  def show
  	@article = User.find(params[:id])
  end

  def new
  	@article=Article.new
  	respond_to do |format|
      format.html { render 'new' }
      format.json { render json: @article }
    end
  end

  def edit
  end

  def create

  	@article = Article.new(article_params)
    # authorize @article
    if @article.save
      render json: @article
    else
      render json: { errors: @article.errors }, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private

  def article_params
  	params.require(:blog).permit(:title, :short_title, :keywords,:description, :sequence, :category,:is_submit,:is_select)
  end
end
