# frozen_string_literal: true

require "dotenv/load"
require "sinatra"

set :bind, "0.0.0.0" # important for Docker
set :port, 8080

get "/" do
  "Hello #{ENV["HELLO"]}"
end
