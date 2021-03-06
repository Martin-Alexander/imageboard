class PostsController < ApplicationController

  def create
    @post = Post.new(post_params)
    @post.upvotes = 1
    @thread = TopThread.find(params[:thread_id])
    @post.top_thread = @thread
    @post.save
    redirect_to thread_path(@thread)
  end

  def upvote
    @post = Post.find(params[:post_id])
    @post.top_thread
    @post.upvotes += 1
    @post.save
    redirect_to thread_path(@post.top_thread)
  end

  def post_params
    params.require(:post).permit(:content)
  end
end
