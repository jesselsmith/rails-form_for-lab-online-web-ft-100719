class StudentsController < ApplicationController
  def new
    @student = Student.new()
  end

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to @student
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to @student
  end
end
