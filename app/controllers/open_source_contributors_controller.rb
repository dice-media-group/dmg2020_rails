class OpenSourceContributorsController < ApplicationController
  before_action  :authenticate_user!
  before_action :set_open_source_contributor, only: [:show, :edit, :update, :destroy]

  # GET /open_source_contributors
  # GET /open_source_contributors.json
  def index
    @open_source_contributors = OpenSourceContributor.all
  end

  # GET /open_source_contributors/1
  # GET /open_source_contributors/1.json
  def show
  end

  # GET /open_source_contributors/new
  def new
    @open_source_contributor = OpenSourceContributor.new
  end

  # GET /open_source_contributors/1/edit
  def edit
  end

  # POST /open_source_contributors
  # POST /open_source_contributors.json
  def create
    @open_source_contributor = OpenSourceContributor.new(open_source_contributor_params)

    respond_to do |format|
      if @open_source_contributor.save
        format.html { redirect_to @open_source_contributor, notice: 'Open source contributor was successfully created.' }
        format.json { render :show, status: :created, location: @open_source_contributor }
      else
        format.html { render :new }
        format.json { render json: @open_source_contributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /open_source_contributors/1
  # PATCH/PUT /open_source_contributors/1.json
  def update
    respond_to do |format|
      if @open_source_contributor.update(open_source_contributor_params)
        format.html { redirect_to @open_source_contributor, notice: 'Open source contributor was successfully updated.' }
        format.json { render :show, status: :ok, location: @open_source_contributor }
      else
        format.html { render :edit }
        format.json { render json: @open_source_contributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_source_contributors/1
  # DELETE /open_source_contributors/1.json
  def destroy
    @open_source_contributor.destroy
    respond_to do |format|
      format.html { redirect_to open_source_contributors_url, notice: 'Open source contributor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_source_contributor
      @open_source_contributor = OpenSourceContributor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_source_contributor_params
      params.require(:open_source_contributor).permit(:first_name, :last_name, :url, :email, :gravatar_username)
    end
end
