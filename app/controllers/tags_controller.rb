class TagsController < ApplicationController

    def index
        @tags = Tag.all
    end

    def show
        @tag = Tag.find(params[:id])
    end

    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy

        flash.notice = "Tag '#{@tag.name}' Destroyed!"

        redirect_to action: "index"
    end

    before_filter :require_login, only: [:destroy]

end
