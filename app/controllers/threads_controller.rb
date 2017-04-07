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
    TopThread.create(thread_params)
  end

  def thread_params
    params.require(:top_thread).permit(:title, :content)
  end
end
