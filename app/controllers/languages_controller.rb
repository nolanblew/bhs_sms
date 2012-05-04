class LanguagesController < ApplicationController
  helper_method :sort_column

   def new
     @language = Language.new
     @language.available = true
     @method = "Add"
     render 'modify'
   end

   def create
     @language = Language.new(params[:language])
     if @language.save
       flash[:success] = "Added Language."
       redirect_to "/languages/list"
     else
       @method = "Add"
       render 'modify'
     end
   end

   def edit
     @language = Language.find(params[:id])
     @method = "Edit"
     render 'modify'
   end

   def update
     @language = Language.find(params[:id])
     if @language.update_attributes(params[:language])
       flash[:success] = "Updated Language."
       redirect_to "/languages/list"
     else
       @method = "Edit"
       render 'modify'
     end
   end

   def destroy
     @language = Language.find(params[:id])
     user = @language.student_id
     if user.nil? || Student.find(user).nil?
       @language.destroy
     else
       user = Student.find(user)
       user.language.destroy
     end
     flash[:success] = "Deleted Language."
     redirect_to "/languages/list"
   end

   def list

   end


   private
   def sort_column
     Language.column_names.include?(params[:sort]) ? params[:sort] : "name"
   end

end
