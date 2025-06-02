class ArticlesController < ApplicationController
    def index
        # indexという名前のメソッドはactionとも言い、CRUDに対応したメソッド。
        # indexは、何かの一覧を表示するという意味で使う。
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

end
