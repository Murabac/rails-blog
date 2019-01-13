class ArticlesController < ApplicationController
  include ArticlesHelper #this helper lets us verify what the user has sent to us

  #This is what the app will send back when a user requests http://localhost:3000/articles/
    def index
        @articles = Article.all
    end

    #New Show article action method
    def show
      @article = Article.find(params[:id])
    end

    #New post Action Method
    def new
      @article = Article.new
    end

    #From that Creates New post
    def create
      @article = Article.new(article_params)
      @article.save
      flash.notice = "Article '#{@article.title}' Created!"
      redirect_to article_path(@article)
    end

    #Destory or Delete a Post
    def destroy
      @article = Article.find(params[:id])
      @article.destroy
      flash.notice = "Article '#{@article.title}' Deleted!"
      redirect_to action: "index"
    end

    #Edit postAction Method
    def edit
      @article = Article.find(params[:id])
    end

    #Update a post
    def update
      @article = Article.find(params[:id])
      @article.update(article_params)
      flash.notice = "Article '#{@article.title}' Updated!"
      redirect_to article_path(@article)
    end

end
