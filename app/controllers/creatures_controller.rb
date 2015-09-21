class CreaturesController < ApplicationController

	def index
		@creatures = Creature.all
		render :index
	end

	def new
		@creature = Creature.new
		render :new
	end

	def create 
		new_creature = params.require(:creature).permit(:name, :description)
		Creature.create(new_creature)
		redirect_to '/creatures'
	end

	def show
		id = params[:id]
		@creature = Creature.find(id)
		render :show
	end

end
