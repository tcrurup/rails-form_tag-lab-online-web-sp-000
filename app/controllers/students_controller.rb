class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    Student.create(params)

  end

  def show
    @student = Student.find(params[:id])
  end

end
