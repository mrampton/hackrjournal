class HomeController < ApplicationController
  def index
    @posts = Post.order("id DESC")
  end
end
