#A controller is a class that is defined to inherit from Application Controller
#inside this class, methods will be defined as actions for this controller
#actions will perform CRUD operations on articles
class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show 
    #object reference    
     @article = Article.find(params[:id])
    end

    def new
        @article = Article.new   
    end
    
    def edit
	@article = Article.find(params[:id])
    end 

    def create
        @article = Article.new(article_params)
   
         if  @article.save
             redirect_to @article 
   	 else
        	render 'new'
   	 end
    end
	
    def update 
	    @article = Article.find(params[:id])

	    if @article.update(article_params)
		    redirect_to @article
	    else
		    render 'edit'
            end
    end

    private
        def article_params
            params.require(:article).permit(:title, :text)

            end	       #ActiveSupport::HashWithIndifferentAccess obj is returned
               #allowing access to keys of hash using either strings or symbols

end 
