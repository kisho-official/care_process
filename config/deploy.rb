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
set :log_level, :info
set :scm,  :git
set :repo_url, "https://github.com/kisho-official/care_process"
set :user, "kisho.official@gmail.com"

namespace :deploy do
  task :start_server do
    on 'caerprocess.cloudapp.net' do
      within "/var/care_process_#{rails_env}"
      execute :rails, "server"
    end
    end
  task :start do ; end
  end
after "deploy:start", "deploy:start_server"
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
