Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

    #get("/places", { :controller => "places", :action => "index" })

    resources "places" 
    #get("/places", { :controller => "places", :action => "index" })
    #new place form
    #get("/places/new", { :controller => "places", :action => "index" })
    #details page for place
    #get("/places/:id", { :controller => "places", :action => "index" })
    
    resources "entries" 
end
