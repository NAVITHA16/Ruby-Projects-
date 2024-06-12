class CommentsController < ApplicationController
    def create
        @artcile = Article.find(params[:article_id])
        @artcile.comments.create(comment_params)
        redirect_to @artcile
    end
    private
    def comment_params
        params.require(:comment).permit(:body)
    end
end
