Rails.application.routes.draw do
  get("/", { :controller => "boards", :action => "index" })
  get("/boards/:path_id", { :controller => "boards", :action => "show" })
  post("/insert_board", { :controller => "boards", :action=> "create"})
  post("/insert_listing", { :controller => "listings", :action => "create" })
end
