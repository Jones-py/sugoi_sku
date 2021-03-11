class CommentsController < ApplicationController
 before_action :set_comment, only: [:show, :new, :edit, :update, :destroy]
  def index
   @comments=Comment.all
  end

  def new
    @comment=Comment.new
  end

  def create
    @comment=Comment.new(comment_params)
    @comment.course_id = params[:course_id]
    @comment.save
    redirect_to course_path(@comment.course)
  end

  def edit

  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to course_path(@comment.course), notice: 'comment was successfully updated.' }
        format.json { render :show, status: :ok, location: comments_path }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to course_path(@comment.course), notice: 'Comment Removed.' }
      format.json { head :no_content }
    end
  end
  private

  def set_comment
   @comment=Comment.find(params[:id])
  end
  def comment_params
   params.require(:comment).permit(:content)
  end
end
