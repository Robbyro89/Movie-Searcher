require 'dotenv'
require 'themoviedb'

Dotenv.load

class SearchMovie
	attr_accessor :usersearch, :results

	def initialize(string)
		@usersearch = string
	end

	def perform
		log_in_tmdb
		search_movie
	end

    def log_in_tmdb
    	Tmdb::Api.key(ENV['API_KEY'])
    end

	def search_movie
		@search = Tmdb::Search.new
		@search.resource('movie')
		@search.query(@usersearch)
		@results = @search.fetch
	end

end
