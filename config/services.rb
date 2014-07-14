require 'service_manager'

ServiceManager.define_service "mongodb_service" do |s|
  s.start_cmd = "mongod --pidfilepath mongod.pid --config /usr/local/etc/mongod.conf"
  s.cwd = Dir.pwd
  s.pid_file = 'mongod.pid'
end