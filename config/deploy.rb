set :application, "osmanov.me"
set :repository,  "."
set :deploy_to, "/var/www/apps/#{application}"
set :scm, :git
set :user, "ubuntu"
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa")]
server "osmanov.me", :web, :app, :db, :primary => true
set :deploy_via, :copy
set :copy_exclude, [".git", "spec"]
set :use_sudo, false
