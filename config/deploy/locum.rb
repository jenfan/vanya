role :app, %w(hosting_jenfan@calcium.locum.ru)
role :web, %w(hosting_jenfan@calcium.locum.ru)
role :db, %w(hosting_jenfan@calcium.locum.ru)

set :ssh_options, forward_agent: true
set :rails_env, :production
