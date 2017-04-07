class ThreadsController < ApplicationController
  def index
    @threads = TopThread.all
  end

  def show
    @thread = TopThread.find(params[:thread_id])
  end

  def new
  end

  def create
    @thread = TopThread.new(thread_params)
    @thread.upvotes = 1
    @thread.save
    redirect_to thread_path(@thread)
  end

  def upvote
    @thread = TopThread.find(params[:thread_id])
    @thread.upvotes += 1
    @thread.save
    redirect_to threads_path
  end

  def thread_params
    params.require(:top_thread).permit(:title, :content)
  end
end
