class OpenSourceWorksController < ApplicationController
  before_action :set_open_source_work, only: [:show, :edit, :update, :destroy]

  # GET /open_source_works
  # GET /open_source_works.json
  def index
    @open_source_works = OpenSourceWork.all
  end

  # GET /open_source_works/1
  # GET /open_source_works/1.json
  def show
  end

  # GET /open_source_works/new
  def new
    @open_source_work = OpenSourceWork.new
  end

  # GET /open_source_works/1/edit
  def edit
  end

  # POST /open_source_works
  # POST /open_source_works.json
  def create
    @open_source_work = OpenSourceWork.new(open_source_work_params)

    respond_to do |format|
      if @open_source_work.save
        format.html { redirect_to @open_source_work, notice: 'Open source work was successfully created.' }
        format.json { render :show, status: :created, location: @open_source_work }
      else
        format.html { render :new }
        format.json { render json: @open_source_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /open_source_works/1
  # PATCH/PUT /open_source_works/1.json
  def update
    respond_to do |format|
      if @open_source_work.update(open_source_work_params)
        format.html { redirect_to @open_source_work, notice: 'Open source work was successfully updated.' }
        format.json { render :show, status: :ok, location: @open_source_work }
      else
        format.html { render :edit }
        format.json { render json: @open_source_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_source_works/1
  # DELETE /open_source_works/1.json
  def destroy
    @open_source_work.destroy
    respond_to do |format|
      format.html { redirect_to open_source_works_url, notice: 'Open source work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_source_work
      @open_source_work = OpenSourceWork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_source_work_params
      params.require(:open_source_work).permit(:title, 
        :license_kind, 
        :license_text, 
        :url,
        open_source_contributor_ids:[], 
        open_source_contributors_attributes: [:first_name, 
          :last_name, 
          :email, 
          :gravatar_username]
      )
    end
end
