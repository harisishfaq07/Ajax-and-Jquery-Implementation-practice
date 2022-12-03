class ArticlesController < ApplicationController
before_action :authenticate_user! , only: [:new , :edit]
def new
    @article = Article.new
end

def create
    @article = Article.new(article_params)
if @article.save
    users = User.all
    ArticleMailer.new_article(users).deliver_now
    redirect_to article_path(@article.id)
else
    render 'new'
end
end
def show
@article = Article.find(params[:id])
end
def index
    @articles = Article.all
end

def edit
end

def update
end
def destroy
    @article = Article.find(params[:id])
    @article.destroy
    respond_to do |format|
        format.html { redirect_to articles_path }
        format.json { head :no_content }
        format.js   { render :layout => false }
     end
    # redirect_to articles_path
  end
private
def article_params
    params.require(:article).permit(:title , :description , :note , :image , category_ids: []  )
end

end