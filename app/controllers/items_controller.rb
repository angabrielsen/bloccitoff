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
		@item = Item.build(item_params)

		@new_item = Item.new

    if @item.save
			flash[:notice] = "Item was saved."
			# redirect_to @user
			# redirect_to user_path(@user.id)
		else
			flash[:error] = "There was an error saving the item. Please try again."
			# render 'users/show'
		end
  end
end
