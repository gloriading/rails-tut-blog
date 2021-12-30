class CommentsController < ApplicationController
    http_basic_authenticate_with name: 'qwerasdf', password: 'secret', only: :destroy

    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_parmas)
        redirect_to @article
    end

    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to @article, status: 303
    end

    private
    
    def comment_parmas 
        params.require(:comment).permit(:commenter, :body, :status)
    end
end
