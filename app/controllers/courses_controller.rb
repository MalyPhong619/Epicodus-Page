class CoursesController < ApplicationController
  def new
    @track = Track.find(params[:track_id])
    @course = @track.courses.new
  end

  def show
    @track = Track.find(params[:track_id])
    @course = Course.find(params[:id])
  redirect_to tracks_path(@course)
end

  def create
    @track = Track.find(params[:track_id])
    @course = @track.courses.new(course_params)
    if @course.save
      redirect_to track_path(@course.track)
    else
      render :new
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to tracks_path(@course.track)
  end

  def edit
    @track = Track.find(params[:track_id])
    @course = Course.find(params[:id])
  end

  def update
  @track = Track.find(params[:track_id])
  @course = Course.find(params[:id])
  if @course.update(course_params)
    redirect_to track_course_path
  else
  render :edit
  end
end

private
  def course_params
    params.require(:course).permit(:name)
  end
end
