class HomeController < ApplicationController
    def index
        @title = 'デイトラ'
        render 'home/index'
    end

    def about
        render 'home/about'

    end

end
