class CoursesController < ApplicationController

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
    params.require(:course).permit(:name,:category,:description,:start_date,:course_ends,:course_period,:user_id, :id)
  end
end
