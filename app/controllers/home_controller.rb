class HomeController < ApplicationController
  def index
  end

  def about
    @page_banner = 'banners/about'   
  end

  def terms
  end

  def privacy
  end
end
