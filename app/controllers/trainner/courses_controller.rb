class Trainner::CoursesController < ApplicationController
  before_action :logged_in_user,  :verify
  def index
    @courses = Course.paginate page: params[:page]
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new course_params
    if @course.save
      flash[:success] = t "Sucess"
      redirect_to users_path
    else
      flash[:error] = t "Erorr"
      render :new
    end
  end

  private

  def course_params
    params.require(:course).permit :name, :description, :start_date, :end_date
  end
end
