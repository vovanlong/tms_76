class Trainer::UserCoursesController < ApplicationController
  before_action :logged_in_user, :verify
  def index
    @user_courses = current_user.courses.paginate page: params[:page], per_page: Settings.page_course
  end

  def show; end
end
