class InstrumentsController < ApplicationController

  helper_method :sort_column

  def new
    @instrument = Instrument.new
    @method = "Add"
    render 'modify'
  end

  def create
    @instrument = Instrument.new(params[:instrument])
    if @instrument.save
      flash[:success] = "Added Instrument."
      redirect_to "/instruments/list"
    else
      @method = "Add"
      render 'modify'
    end
  end

  def edit
    @instrument = Instrument.find(params[:id])
    @method = "Edit"
    render 'modify'
  end

  def update
    @instrument = Instrument.find(params[:id])
    if @instrument.update_attributes(params[:instrument])
      flash[:success] = "Updated Instrument."
      redirect_to "/instruments/list"
    else
      @method = "Edit"
      render 'modify'
    end
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    user = @instrument.student_id
    if user.nil? || Student.find(user).nil?
      @instrument.destroy
    else
      user = Student.find(user)
      user.instrument.destroy
    end
    flash[:success] = "Deleted Instrument."
    redirect_to "/instruments/list"
  end

  def list

  end


  private
  def sort_column
    Instrument.column_names.include?(params[:sort]) ? params[:sort] : "instrument"
  end

end
