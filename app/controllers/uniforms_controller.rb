class UniformsController < ApplicationController

  helper_method :sort_column

  def new
    @uniform = Uniform.new
    @method = "Add"
    render 'modify'
  end

  def create
    @uniform = Uniform.new(params[:uniform])
    if @uniform.save
      flash[:success] = "Created new uniform"
      redirect_to "/uniforms/list"
    else
      @method = "Add"
      render 'modify'
    end
  end

  def edit
    @uniform = Uniform.find(params[:id])
    @method = "Edit"
    render 'modify'
  end

  def update
    @uniform = Uniform.find(params[:id])
    if @uniform.update_attributes(params[:uniform])
      flash[:success] = "Updated uniform"
      redirect_to "/uniforms/list"
    else
      @method = "Edit"
      render 'modify'
    end
  end

  def destroy
    Uniform.find(params[:id]).destroy
    flash[:success] = "Deleted uniform."
    redirect_to "/uniforms/list"
  end

  def list
  end

  private
  def sort_column
    Uniform.column_names.include?(params[:sort]) ? params[:sort] : "number"
  end
end
