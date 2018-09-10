class ArticlesController < ApplicationController

  #GET /articles
  def index
    #las que tengan el @ son variables que pueden ser accedidas por
    #fuera del controlador
    @articles = Article.all
  end

  #get/articles/1
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article= Article.new
  end

  def edit
    @article = Article.find(params[:id])
    
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def create
    #@article = Article.create(title: params[:article][:title],
    #                          body: params[:article][:body])
    @article = Article.new(article_params)

    if @article.save
      #si guarda es por que paso todo lo exigido por el modelo
      #abre el article
      redirect_to @article
    else
      #si no pasa es por que no cumplio con las cosas y regresa a new
      render :new
    end
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end


  #se hace para que solo puedan ingresar los elementos que se piden
  #para la creacion del articulo
  def article_params
    params.require(:article).permit(:title,:body)
  end

end
