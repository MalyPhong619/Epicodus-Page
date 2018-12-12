class LessonsController < ApplicationController

  def new
    @lesson = Course.find(params[:lesson_id])
    @course = @lesson.courses.new
  end

  def show
    @lesson = Course.find(params[:lesson_id])
    @course = Lesson.find(params[:id])
  redirect_to lessons_path(@course)
end

  def create
    @lesson = Course.find(params[:lesson_id])
    @course = @lesson.courses.new(course_params)
    if @course.save
      redirect_to lesson_path(@course.lesson)
    else
      render :new
    end
  end


private
  def lesson_params
    params.require(:lesson).permit(:name)
  end
end
