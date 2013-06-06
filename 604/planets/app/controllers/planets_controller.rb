class PlanetsController <ApplicationController
	def index
		@planets = Planet.all
	end

	def create
		planet = Planet.new(params['planet'])
		if planet.save!
			redirect_to planets_path
		else
			redirect_to new_planet_path
		end
	end

	def new
		@planet = Planet.new
	end

	def edit
		@planet = Planet.find(params[:id])
	end

	def update
		planet = Planet.find(params[:id])
		planet.update_attributes(params['planet'])
		redirect_to planets_path
	end

	def show
		@planet = Planet.find(params[:id])
	end

	def destroy
		Planet.find(params[:id]).delete
		redirect_to planets_path
	end

end