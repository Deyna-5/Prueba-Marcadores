class BookmarkersController < ApplicationController
  before_action :set_bookmarker, only: %i[ show edit update destroy ]

  # GET /bookmarkers or /bookmarkers.json
  def index
    @bookmarkers = Bookmarker.all
  end

  # GET /bookmarkers/1 or /bookmarkers/1.json
  def show
  end

  # GET /bookmarkers/new
  def new
    @bookmarker = Bookmarker.new
  end

  # GET /bookmarkers/1/edit
  def edit
  end

  # POST /bookmarkers or /bookmarkers.json
  def create
    @bookmarker = Bookmarker.new(bookmarker_params)

    respond_to do |format|
      if @bookmarker.save
        format.html { redirect_to @bookmarker, notice: "Bookmarker was successfully created." }
        format.json { render :show, status: :created, location: @bookmarker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookmarker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookmarkers/1 or /bookmarkers/1.json
  def update
    respond_to do |format|
      if @bookmarker.update(bookmarker_params)
        format.html { redirect_to @bookmarker, notice: "Bookmarker was successfully updated." }
        format.json { render :show, status: :ok, location: @bookmarker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookmarker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookmarkers/1 or /bookmarkers/1.json
  def destroy
    @bookmarker.destroy
    respond_to do |format|
      format.html { redirect_to bookmarkers_url, notice: "Bookmarker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmarker
      @bookmarker = Bookmarker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookmarker_params
      params.require(:bookmarker).permit(:url, :type_id, :category_id)
    end
end
