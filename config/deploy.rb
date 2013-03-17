require 'bundler/capistrano'
set :user, 'edrain'
set :domain, 'streetdate.info'
set :project, 'street_date'
set :application, 'streetdate.info'
set :applicationdir, "/home/edrain/streetdate.info"

# version control config
set :scm_username, 'edrain'
set :scm_password, '007Spies'
set :repository, "http://svn.streetdate.info/#street_date/trunk/"

#set :default_environment, { 'PATH' => "'/usr/lib/ruby/gems/1.8/bin//bundle:/home/edrain/.gems/bin:/usr/lib/ruby/gems/1.8/bin/:/usr/local/bin:/usr/bin:/bin:'" }
set :default_environment, { 'PATH' => "'/home/edrain/.gems/bin/bundle:/home/edrain/.gems/bin:/usr/lib/ruby/gems/1.8/bin/:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games'"}
set :shell, '/bin/bash'
set :rvm_type, :user


set :scm, 'git'
set :scm_username, 'edrain'
set :scm_password, '007spies'
set :repository,  "https://github.com/edrain/street_date.git"
set :deploy_via, :remote_cache
set :git_enable_submodules, 1 # if you have vendored rails
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
 
# roles (servers)
role :web, domain
role :app, domain
role :db,  domain, :primary => true
 
# deploy config
set :deploy_to, applicationdir
set :deploy_via, :export
 
# additional settings
default_run_options[:pty] = true  # Forgo errors when deploying from windows
#ssh_options[:keys] = %w(/Path/To/id_rsa)            # If you are using ssh_keys
set :chmod755, "app config db lib public vendor script script/* public/disp*"
set :use_sudo, false 
  
# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
