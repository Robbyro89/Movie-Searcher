Rails.application.routes.draw do
  root 'movies#search'
  get 'movies/search'
end
