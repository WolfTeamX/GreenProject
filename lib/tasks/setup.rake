namespace :setup do

  task remove_pid: :environment do
    if Rails.env.development?
      path = File.join(Dir.pwd, 'tmp', 'pids', 'server.pid')
      File.delete(path) if File.exist?(path)
    end
  end

end
