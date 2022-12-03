class CategoriesController < ApplicationController

    def new
    end
    def create
    end

    private 
    def category_params
        params.require(:category).permit(:name)
    end
end
