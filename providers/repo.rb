require 'mixlib/shellout'

action :add do
  if repo_exist?
    new_resource.updated_by_last_action false
  else
    command = "zypper ar"
    command << " -f" if new_resource.autorefresh
    command << " #{new_resource.uri} \"#{new_resource.alias}\""
    shellout = Mixlib::ShellOut.new(command, user: 'root').run_command
    if shellout.stderr.empty?
      new_resource.updated_by_last_action true
    else
      Chef::Log.error("Error adding repo: #{shellout.stderr}")
    end
  end
end

action :remove do
  if repo_exist?
    command = "zypper rr \"#{new_resource.alias}\""
    shellout = Mixlib::ShellOut.new(command, user: 'root').run_command
    if shellout.stderr.empty?
      new_resource.updated_by_last_action true
    else
      Chef::Log.error("Error removing repo: #{shellout.stderr}")
    end
  else
    new_resource.updated_by_last_action false
  end
end

def repo_exist?
  command = "zypper repos | grep \"#{new_resource.alias}\""
  shellout = Mixlib::ShellOut.new(command, user: 'root').run_command
  if shellout.stdout.empty?
    false
  else
    true
  end
end
