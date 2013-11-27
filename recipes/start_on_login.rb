include_recipe 'sprout-butler::install'

execute "Start Butler on login" do
  command "addloginitem /Applications/Butler.app"
  user node['current_user']
  only_if { node['sprout']['butler']['open_on_startup'] }
end
