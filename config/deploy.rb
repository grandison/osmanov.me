$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require 'rvm/capistrano'
require 'bundler/capistrano'
set :application, "osmanov.me"
set :rails_env, "production"
set :rvm_ruby_string, 'ree'
set :rvm_type, :user
set :repository,  "."
set :deploy_to, "/var/www/apps/#{application}"
set :scm, :git
set :user, "ubuntu"
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa")]
server "osmanov.me", :web, :app, :db, :primary => true
set :deploy_via, :copy
set :copy_exclude, [".git", "spec"]
set :use_sudo, false
set :rvm_ruby, "ruby-1.9.2-p180"
