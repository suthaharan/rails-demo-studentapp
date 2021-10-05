class StudentsController < ApplicationController

  def index
    @students = Student.order("position ASC")
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to(students_path)
    else
      # @student = params(:student)
      render('new')
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
  end

  def delete
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to(students_path)
  end

  private
    def student_params
      params.require(:student).permit(:name, :position, :active, :content, :teacher_id)
    end  


end
