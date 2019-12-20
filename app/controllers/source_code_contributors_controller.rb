class SourceCodeContributorsController < ApplicationController
  before_action :set_source_code_contributor, only: [:show, :edit, :update, :destroy]

  # GET /source_code_contributors
  # GET /source_code_contributors.json
  def index
    @source_code_contributors = SourceCodeContributor.all
  end

  # GET /source_code_contributors/1
  # GET /source_code_contributors/1.json
  def show
  end

  # GET /source_code_contributors/new
  def new
    @source_code_contributor = SourceCodeContributor.new
  end

  # GET /source_code_contributors/1/edit
  def edit
  end

  # POST /source_code_contributors
  # POST /source_code_contributors.json
  def create
    @source_code_contributor = SourceCodeContributor.new(source_code_contributor_params)

    respond_to do |format|
      if @source_code_contributor.save
        format.html { redirect_to @source_code_contributor, notice: 'Source code contributor was successfully created.' }
        format.json { render :show, status: :created, location: @source_code_contributor }
      else
        format.html { render :new }
        format.json { render json: @source_code_contributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /source_code_contributors/1
  # PATCH/PUT /source_code_contributors/1.json
  def update
    respond_to do |format|
      if @source_code_contributor.update(source_code_contributor_params)
        format.html { redirect_to @source_code_contributor, notice: 'Source code contributor was successfully updated.' }
        format.json { render :show, status: :ok, location: @source_code_contributor }
      else
        format.html { render :edit }
        format.json { render json: @source_code_contributor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /source_code_contributors/1
  # DELETE /source_code_contributors/1.json
  def destroy
    @source_code_contributor.destroy
    respond_to do |format|
      format.html { redirect_to source_code_contributors_url, notice: 'Source code contributor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source_code_contributor
      @source_code_contributor = SourceCodeContributor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def source_code_contributor_params
      params.require(:source_code_contributor).permit(:first_name, :last_name)
    end
end
