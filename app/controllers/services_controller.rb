class ServicesController < ApplicationController
  def index
    @page_banner = 'banners/services/index'
  end

  def website_development
    @page_banner = 'banners/services/website_development'   
  end

  def graphic_design
    @page_banner = 'banners/services/graphic_design'   
  end

  def digital_marketing
    @page_banner = 'banners/services/digital_marketing'   
  end

  def seo_and_content_marketing
    @page_banner = 'banners/services/seo_and_content_marketing'   
  end

  def app_development
    @page_banner = 'banners/services/app_development'   
  end
end
