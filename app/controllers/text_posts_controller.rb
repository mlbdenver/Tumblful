class TextPostsController < ApplicationController
  def index
    @text_posts = TextPost.all
  end
  
  # text_posts GET  /text_posts/:id(.:format) text_posts#show
  def show
    @text_post = TextPost.find(params[:id])
  end
  
  # new_text_post GET  /text_posts/new(.:format) text_posts#new
  def new

  end
  
  # edit_text_post GET  /text_posts/:id/edit(.:format) text_posts#edit
  def edit
    @text_post = TextPost.find(params[:id])
  end
  
  # POST /text_posts(.:format) text_posts#create
  def create
    @text_post = TextPost.new(url: params[:image_link][:url], text_post_params)
    if @text_post.save
      redirect_to text_posts_path
    else
      @errors = @text_post.errors
       render :new
    end
  end
  
  # PATCH  /text_posts/:id(.:format) text_posts#update
  def update
    @text_post = TextPost.find(params[:id])
    if @text_post.update(text_post_params)
      redirect_to text_posts_path
    else
      @errors = @text_post.errors
      render :edit
    end
  end
  
  # DELETE  /text_posts/:id(.:format) text_posts #destroy
  def delete
    @text_post = TextPost.find(params[:id])
    @text_post.destroy
    redirect_to text_posts_path
   end
  
  private
  def text_post_params
    params.require(:image_link).permit(:url, :title)
  end
end
