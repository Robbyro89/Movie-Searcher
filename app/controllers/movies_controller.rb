class MoviesController < ApplicationController

  def search
  	@my_results = nil
  	@usersearch = params[:usersearch]
  	@my_results = SearchMovie.new(@usersearch).perform  	
  end

end
