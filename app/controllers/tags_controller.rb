class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end

    def show
        @tag = Tag.find(params[:id])
        if @tag.articles.size == 0
            @tag.destroy
         end
    end
end
