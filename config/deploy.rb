set :application, "osmanov.me"
set :repository,  "."
set :deploy_to, "/home/ubuntu/#{application}"
set :scm, :git
set :user, "ubuntu"
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa")]
set :location, "osmanov.me"
role :app, location
role :web, location
role :db,  location, :primary => true
set :deploy_via, :copy
set :stack, :passenger
