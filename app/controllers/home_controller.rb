class HomeController < ApplicationController
  def index
    @hide_page_banner = true
  end

  def about
    @hide_page_banner = true
  end

  def terms
  end

  def privacy
  end
end
