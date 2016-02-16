class ItemsController < ApplicationController
	skip_before_action :authenticate_user!


	# resources :users do
	# 	resources :items, only: [:create]
	# end
	# post '/users/:user_id/items', 'items#create'

	# resource :items, only: [:create]
	# post '/items', to 'items#create'
  def create
		@user = current_user
		@item = current_user.items.build(params.require(:item).permit(:name))

		@new_item = Item.new

    if @item.save
			flash[:notice] = "To-do saved."
			redirect_to root_path
		else
			flash[:error] = "There was an error saving this to-do. Please try again."
			redirect_to root_path
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
			format.html
			format.js
		end
  end
end