class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    Student.create(first_name: params[first_name], last_name: params[last_name]).tap do |x|
      redirect_to student_path(x)
    end
  end

  def show
    @student = Student.find(params[:id])
  end

end
