class CoursesController < ApplicationController
  load_and_authorize_resource

  def index
    @courses=Course.all
  end

  def new
   @course=Course.new
  end

  def show
    @course=Course.find(params[:id])
  end

  def create
     @course=Course.new(course_params)
     # @course.user_id=current_user.id
     if @course.save
       redirect_to courses_path, notice: "New Course!"
     else
       render :new
     end
   end

  def edit
  end

  def update
   @course=Course.new(course_params)
     if @course.update(course_params)
        redirect_to courses_path, notice: " Course updated!"
     else
      render :edit
     end
  end

  def destroy
    @course.destroy
    redirect_to courses_path, notice:" Course Deleted!"
  end

  private

  def course_params
    params.require(:course).permit(:name,:category,:description,:course_period,:user_id, :id)
  end
end
