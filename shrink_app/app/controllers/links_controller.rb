class LinksController < ApplicationController

  def index
    @link = @@links_db
  end

  def new
    @url_link = Link.new
  end

  def create
  	# Get link params
  	new_link = params.require(:link).permit(:url_link, :random_string, :created_at, :updated_at)
  	# Create new link
  	link = Link.create(new_link)
  	link["random_string"] = SecureRandom.urlsafe_base64(8)
  	#@@links_db << link
  	# redirect using named route
  	#  for the links_path, ('/links/:id'), using
  	#  the link.id it is provided
  	redirect_to link_path(link.id)
  end

  def show
  	id = params[:id]
  	@link = Link.find(id)
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
