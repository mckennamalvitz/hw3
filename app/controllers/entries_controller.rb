class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    # render entries/index view
  end
  
  def new
    @place = Place.find_by({ "id" => params["place_id"] })
    # render posts/new view with new Post form
  end

  def create
    # start with a new Post
    @entry = Entry.new

    # assign user-entered form data to Entry's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occured_on"]

    # Assign relationship
    @entry["place_id"] = params["place_id"]
    
    # save Entry row
    @entry.save

    # redirect user
    redirect_to "/places/#{@entry['place_id']}"
    #redirect_to "/places"
  end

end
