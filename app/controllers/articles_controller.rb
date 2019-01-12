class ArticlesController < ApplicationController
  #This is what the app will send back when a user requests http://localhost:3000/articles/
    def index
        @articles = Article.all
    end

    #Show action method
    def show
      @article = Article.find(params[:id]);
    end
end
