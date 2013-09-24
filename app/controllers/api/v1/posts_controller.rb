class Api::V1::PostsController < ApplicationController

  def index
    @posts = Post.all
    respond_to do |f|
      f.json { render json: @posts.to_json }
      f.xml  { render xml: @posts.to_xml }
    end
  end
end
