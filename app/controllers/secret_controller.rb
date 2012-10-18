class SecretController < ApplicationController
  http_basic_authenticate_with :name => "nayana", :password => "gharte"
end
