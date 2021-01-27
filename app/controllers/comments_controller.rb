class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create comment_params
    destination = Destination.find params[:destination_id]
    destination.comments << @comment
    @current_user.comments << @comment
    redirect_to destination
  end

  def edit
    @dcomment = Comment.find params[:id]
  end

  def update
    comment = Comment.find params[:id]
    comment.update comment_params
    # redirect_to destination
  end

  def show
    @comment = Comment.find params[:id]

  end

  def destroy
    comment = Comment.find params[:id]
    comment.destroy
    redirect_to root_path

  end

  private
  def comment_params
  params.require(:comment).permit(:name, :blog, :date)
  end

end
