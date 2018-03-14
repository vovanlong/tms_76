class Trainner::CoursesController < ApplicationController
  before_action :logged_in_user,  :verify
  before_action :load_course, only: [:show, :edit, :update, :destroy]
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

  def edit
  end

  def update
    byebug
    return render :edit unless @course.update_attributes course_params 
    byebug
    flash[:success] = t ".success"
    redirect_to users_path
  end

  def destroy
    if @course.destroy
      byebug
      flash[:success] = t "successdelete"
    else
      flash[:danger] = t "danger.delete"
    end
  end

  private

  def course_params
    params.require(:course).permit :name, :description, :start_date, :end_date
  end

  def load_course
    @course = Course.find_by id: params[:id] 
    @course || render(file: "public/404.html", status: 404, layout: true)
  end
end
