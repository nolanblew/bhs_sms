class UsersController < ApplicationController
  helper_method :sort_column

  def new
    @user = User.new
    @method = "Add"
    render 'modify'
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Added User."
      redirect_to "/users/list"
    else
      @method = "Add"
      render 'modify'
    end
  end

  def edit
    @user = User.find(params[:id])
    @method = "Edit"
    render 'modify'
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Updated User."
      redirect_to "/users/list"
    else
      @method = "Edit"
      render 'modify'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    flash[:success] = "Deleted User."
    redirect_to "/users/list"
  end

  def list

  end


  private
  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "username"
  end

end
