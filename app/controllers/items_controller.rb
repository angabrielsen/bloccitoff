class ItemsController < ApplicationController
	skip_before_action :authenticate_user!
	
  def create
		@user = current_user
		@item = current_user.items.build(params.require(:item).permit(:name))

		@new_item = Item.new

    if @item.save
			flash[:notice] = "To-do saved."
		else
			flash[:error] = "There was an error saving this to-do. Please try again."
		end

		respond_to do |format|
			format.html 
			format.js
		end
  end

  def destroy
  	@user = current_user
  	@item = current_user.items.find(params[:id])

  	if @item.destroy
			flash[:notice] = "To-do completed!"
		else
			flash[:error] = "There was an error deleting this to do. Please try again."
		end

		respond_to do |format|
			format.html { redirect_to root_path}
			format.js
		end
  end
end