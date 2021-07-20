class SchoolLunchesController < ApplicationController
  before_action :authenticate_user!

  def index
    @school_lunches = SchoolLunch.all
  end

  def new
    @school_lunch = SchoolLunch.new
  end

  def create
    @school_lunch = SchoolLunch.new(school_lunch_params)
    if @school_lunch.save
      redirect_to root_path
    else
      render :new
    end
  end
  private

  def school_lunch_params
    params.require(:school_lunch).permit(:manufacturer, :lunch_item_name, :image).merge(user_id: current_user.id)
  end
end
