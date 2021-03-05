class StudentsController < ApplicationController
 before_action :find_student
  def create
    @student =Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    @student.save
    redirect_to student_path(@student)
  end

  def show

  end

  def edit

  end

  def update
    @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
  end

  def new
    @student=Student.new
  end
  
  private 
  def find_student
    @student=Student.find_by_id(params[:id])
  end
end
