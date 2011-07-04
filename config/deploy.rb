set :application, 'test.aioninnovations.com'
set :user, 'aionandrails'
set :password, 'q5V3TYdf'
set :domain, 'test.aioninnovations.com'
set :mongrel_port, '4'
set :mongrel_nodes, "4"
set :rails_env,     "production"
set :server_hostname, 'bill.dreamhost.com'
 
set :git_account, 'hgsigner'
 
set :scm_passphrase,  Proc.new { Capistrano::CLI.password_prompt('call me git') }
 
role :web, 'test.aioninnovations.com'
role :app, 'test.aioninnovations.com'
role :db, 'test.aioninnovations.com', :primary => true
 
default_run_options[:pty] = true
set :repository,  "git@github.com:#{git_account}/test_app.git"
set :scm, "git"
set :user, user
 
ssh_options[:forward_agent] = true
set :branch, "master"
set :deploy_via, :checkout
set :git_shallow_clone, 1
set :git_enable_submodules, 1
set :use_sudo, false
set :deploy_to, "/home/#{user}/#{application}"




