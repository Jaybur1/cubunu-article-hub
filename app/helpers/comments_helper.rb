module CommentsHelper
    def comment_params
        params.require(:comment).permit(:current_user.username :author_name, :body)
    end
end
