class SourceCodeCreditsController < ApplicationController
  before_action :set_source_code_credit, only: [:show, :edit, :update, :destroy]

  # GET /source_code_credits
  # GET /source_code_credits.json
  def index
    @source_code_credits = SourceCodeCredit.all
  end

  # GET /source_code_credits/1
  # GET /source_code_credits/1.json
  def show
  end

  # GET /source_code_credits/new
  def new
    @source_code_credit = SourceCodeCredit.new
  end

  # GET /source_code_credits/1/edit
  def edit
  end

  # POST /source_code_credits
  # POST /source_code_credits.json
  def create
    @source_code_credit = SourceCodeCredit.new(source_code_credit_params)

    respond_to do |format|
      if @source_code_credit.save
        format.html { redirect_to @source_code_credit, notice: 'Source code credit was successfully created.' }
        format.json { render :show, status: :created, location: @source_code_credit }
      else
        format.html { render :new }
        format.json { render json: @source_code_credit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /source_code_credits/1
  # PATCH/PUT /source_code_credits/1.json
  def update
    respond_to do |format|
      if @source_code_credit.update(source_code_credit_params)
        format.html { redirect_to @source_code_credit, notice: 'Source code credit was successfully updated.' }
        format.json { render :show, status: :ok, location: @source_code_credit }
      else
        format.html { render :edit }
        format.json { render json: @source_code_credit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /source_code_credits/1
  # DELETE /source_code_credits/1.json
  def destroy
    @source_code_credit.destroy
    respond_to do |format|
      format.html { redirect_to source_code_credits_url, notice: 'Source code credit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source_code_credit
      @source_code_credit = SourceCodeCredit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def source_code_credit_params
      params.require(:source_code_credit).permit(:name_of_work, :url, :license_kind, :license_text)
    end
end
