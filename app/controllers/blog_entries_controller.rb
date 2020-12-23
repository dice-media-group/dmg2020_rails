class BlogEntriesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit, :update, :destroy, :new, :create]
  before_action :set_blog_entry, only: [:show, :edit, :update, :destroy]

  layout 'backstage'

  # GET /blog_entries
  # GET /blog_entries.json
  def index
    # @blog_entries = current_user.blog_entries.all
    @blog_entries = BlogEntry.all
  end

  # GET /blog_entries/1
  # GET /blog_entries/1.json
  def show
    if @blog_entry.published? == true
          render layout: "application"
    else
      # set current_user to "guest" if no one is signed in
      if user_signed_in?
        render layout: "backstage"
      else
        redirect_to blog_path, notice: 'Whoops, that entry is not ready for prime time yet.'

      end
    end
  end

  # GET /blog_entries/new
  def new
    @blog_entry = BlogEntry.new
  end

  # GET /blog_entries/1/edit
  def edit
  end

  # POST /blog_entries
  # POST /blog_entries.json
  def create

    @blog_entry = BlogEntry.new(blog_entry_params)
    if current_user.has_authorship != true
      redirect_to @blog_entry, notice: 'Sorry, you do not have authorship.  Contact Admin.'
    end


    respond_to do |format|
      if @blog_entry.save
        format.html { redirect_to @blog_entry, notice: 'Blog entry was successfully created.' }
        format.json { render :show, status: :created, location: @blog_entry }
      else
        format.html { render :new }
        format.json { render json: @blog_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_entries/1
  # PATCH/PUT /blog_entries/1.json
  def update
    if current_user.has_authorship != true
      redirect_to @blog_entry, notice: 'Sorry, you do not have authorship.  Contact Admin.'
    end

    respond_to do |format|
      if @blog_entry.update(blog_entry_params)
        format.html { redirect_to @blog_entry, notice: 'Blog entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_entry }
      else
        format.html { render :edit }
        format.json { render json: @blog_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_entries/1
  # DELETE /blog_entries/1.json
  def destroy
    if current_user.has_authorship != true
      redirect_to @blog_entry, notice: 'Sorry, you do not have authorship.  Contact Admin.'
    end

    @blog_entry.destroy
    respond_to do |format|
      format.html { redirect_to blog_entries_url, notice: 'Blog entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_entry
      @blog_entry = BlogEntry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_entry_params
      params.require(:blog_entry).permit(:title, :publish_at, :user_id, :body)
    end

end
