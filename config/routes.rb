Rails.application.routes.draw do

	root "static#home"
	get "episodes", to: 'static#episodes'

end
