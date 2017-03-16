#require 'capistrano/ext/multistage'

set :stages, ["development", "production", "test"]
set :default_stage, "development"
# config valid only for current version of Capistrano
lock "3.4.0"

set :application, "care_process"
set :ssh_options, {
  forward_agent: true,
  #verbose: :debug,
  keys: %w(C:/Users/Kisho/Documents/Rails/care_process/filename.key)
}
set :log_level, :debug
#set :default_env, { path: "$PATH" }
set :scm,  :git
set :repo_url, "https://github.com/kisho-official/care_process"
set :user, "kisho.official@gmail.com"



pid_file = "/home/kisho/server.pid"
namespace :deploy do
  
  task :start do
    on roles(:app) do
        execute "cd #{deploy_to}/current && rails server" 
      end
  end


  task :stop do
    execute  "kill -s QUIT `cat #{pid_file}`" if File.exists?(pid_file)
  end

  task :restart do
    stop
    sleep 2
    start
  end
end
#after "deploy:start", "deploy:start_server"
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
