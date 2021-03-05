class SchoolClassesController < ApplicationController
  before_action :find_class
  def create
    @class= SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path(@class)
  end

  def show
    @class= SchoolClass.find_by_id(params[:id])
  end

  def edit
    @class= SchoolClass.find_by_id(params[:id])

  end

  def update
    @class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to @class
  end

  def new
    @class = SchoolClass.new
  end 

  private 
  def find_class
    @class= SchoolClass.find_by_id(params[:id])
  end 
   
end
