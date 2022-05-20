Rails.application.routes.draw do
  resources "companies"
  resources "contacts"
  resources "activities"
  resources "tasks"
  resources "users"
  resources "sessions"

  get"/logout", 
  :controller => "sessions", 
  :action => "destroy"
  #when user goes to log out, point to sessions controller and run destroy action

  get"/login",
  :controller => "sessions",
  :action => "new"
  #/login is more friendly to users than sessions/new
end
