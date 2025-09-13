Rails.application.routes.draw do
  get("/", { :controller => "boards", :action => "index" })
  get("/boards/:path_id", { :controller => "boards", :action => "show" })
end
