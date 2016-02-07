# Define the name of the application
set :application, 'kronum'

# Define where can Capistrano access the source repository
# set :repo_url, 'https://github.com/[user name]/[application name].git'
set :scm, :git
set :repo_url, 'https://github.com/ra-duga/kronum.git'

# Define where to put your application code
set :deploy_to, "/home/rails/kronum"

set :pty, true

set :format, :pretty


# Set the post-deployment instructions here.
# Once the deployment is complete, Capistrano
# will begin performing them as described.
# To learn more about creating tasks,
# check out:
# http://capistranorb.com/

namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end

 #end
