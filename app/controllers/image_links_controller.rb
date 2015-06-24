class ImageLinksController < ApplicationController
  def index
    @image_links = ImageLink.all
  end
  
  # image_link GET  /image_links/:id(.:format) image_links#show
  def show
    @image_link = ImageLink.find(params[:id])
  end
  
  # new_image_link GET  /image_links/new(.:format) image_links#new
  def new

  end
  
  # edit_image_link GET  /image_links/:id/edit(.:format) image_links#edit
  def edit
    @image_link = ImageLink.find(params[:id])
  end
  
  # POST /image_links(.:format) image_links#create
  def create
    @image_link = ImageLink.new(url: params[:image_link][:url], image_link_params)
    if @image_link.save
      redirect_to image_links_path
    else
      @errors = @image_link.errors
       render :new
    end
  end
  
  # PATCH  /image_links/:id(.:format) image_links#update
  def update
    @image_link = ImageLink.find(params[:id])
    if @image_link.update(image_link_params)
      redirect_to image_links_path
    else
      @errors = @image_link.errors
      render :edit
    end
  end
  
  # DELETE  /image_links/:id(.:format) image_links #destroy
  def delete
    @image_link = ImageLink.find(params[:id])
    @image_link.destroy
    redirect_to image_links_path
   end
  
  private
  def image_link_params
    params.require(:image_link).permit(:url, :title)
  end
end
