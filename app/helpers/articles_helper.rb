module ArticlesHelper
  #this to aviod the rails error of forbidden atrripute
  def article_params
  params.require(:article).permit(:title, :body)
  end
end
