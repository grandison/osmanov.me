$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) 
require "rvm/capistrano" 
require 'bundler/capistrano'
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
set :application, "osmanov.me"
set :repository,  "git@github.com:grandison/osmanov.me.git"
set :deploy_to, "/home/ubuntu/#{application}"
set :scm, :git
set :user, "ubuntu"
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa")]
set :deploy_via, :remote_cache
set :use_sudo, false
set :stack, :passenger
