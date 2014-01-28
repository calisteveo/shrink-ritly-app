class LinksController < ApplicationController

  def index
  end

  def new
    @url_link = Link.new
  end

  def create
  	# Get link params
  	new_link = params.require(:url_link).permit(:url_link)
  	# Create new link
  	new_link["random_string"] = SecureRandom.urlsafe_base64(8)
  	link = Link.create(new_link)
  	# redirect using named route
  	#  for the links_path, ('/links/:id'), using
  	#  the link.id it is provided
  	redirect_to link_path(link.id)
  end

  def show
  	id = params[:id]
  	@url_link = Link.find(id)
    redirect_to @url_link
  end

  # send a form to update link
  def edit
  	id = params[:id]
  	@link = Link.find(id)
  end

  #save our updated info
  def update
  end

end
