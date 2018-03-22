server "35.185.188.216",
  user: "root",
  roles: %w{web db app},
  ssh_options: {
    keys: %w(~/.ssh/gg_cloud_duydy),
    forward_agent: false,
    auth_methods: %w(publickey password)
    # password: "please use keys"
  }

  namespace :deploy do
    desc 'Restart Unicorn'
    task :restart_unicorn do
      invoke 'unicorn:legacy_restart'
    end
  end
