class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    # render entries/index view
  end
  
  def new
    # render posts/new view with new Post form
  end

  def create
    # start with a new Post
    @entry = Entry.new

    # assign user-entered form data to Entry's columns
    @entry["title"] = params["title"]
    @entry["text"] = params["description"]
    @entry["date"] = params["occured_on"]
    

    # save Entry row
    @entry.save

    # redirect user
    redirect_to "/entries"
  end
end
