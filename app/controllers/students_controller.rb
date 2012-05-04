class StudentsController < ApplicationController
  helper_method :sort_column

  def new
    if params[:parents].nil? || params[:parents][:count].nil?
      render 'parent_number'
    else
      @student = Student.new
      @parents = []
      for i in 1..(params[:parents][:count].to_i)
        @parents << Parent.new
      end
      @method = "Add"
      render 'modify'
    end
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      params[:parents].each do |prnt|
        @student.parents.create!(params[prnt])
      end
      redirect_to "/students/list"
    else
      @method = "Add"
      @parents = []
      params[:parents].each do |prnt|
        @parents << prnt
      end
      render 'modify'
    end
  end

  def delete_parent

  end

  def edit

  end

  def update

  end

  def destroy

  end

  def show
  end

  def list
    render 'list'
  end


  private
  def sort_column
    Student.column_names.include?(params[:sort]) ? params[:sort] : "last_name"
  end

end
