class AuthorsController < ApplicationController
  def index
    @authors = User.where("has_authorship = ?", true)
  end

  def show
    @author = User.find(params[:id])
    if @author.has_authorship != true
      redirect_to authors_path
    end
  end
end
# ##############
