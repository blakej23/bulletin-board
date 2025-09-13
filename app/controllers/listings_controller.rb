class ListingsController < ApplicationController

  def create
    # create a new listing
    # populates its attributes

    new_listing = Listing.new

    new_listing.title = params.fetch("title_param")
    new_listing.body = params.fetch("body_param")
    new_listing.expires_on = params.fetch("expires_on_param")
    new_listing.board_id = params.fetch("board_id_param")

    new_listing.save

    if new_listing.id != nil
    redirect_to("/boards/#{new_listing.board_id}", { :notice => "Listing created successfully." })
    else
      redirect_to("boards/#{new_listing.board_id}")
    end

  end
end
