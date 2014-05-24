class CommentsController < ApplicationController
  
  #创建
  def create
    #debugger
    @post = Post.find(params[:post_id])

    @post.comments.create(comment_params)
    
    #转回post页面
    redirect_to :back
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end