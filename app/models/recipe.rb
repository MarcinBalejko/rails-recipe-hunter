class Recipe
  include HTTParty

  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'food2fork.com' 

  base_uri "https://www.food2fork.com/api"

  default_params key: ENV["XXX"]
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end