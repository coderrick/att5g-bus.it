class FourdsController < ApplicationController
  before_action :set_fourd, only: [:show, :edit, :update, :destroy]

  # GET /fourds
  # GET /fourds.json
  def index
    @fourds = Fourd.all
  end

  # GET /fourds/1
  # GET /fourds/1.json
  def show
  end

  # GET /fourds/new
  def new
    @fourd = Fourd.new
  end

  # GET /fourds/1/edit
  def edit
  end

  # POST /fourds
  # POST /fourds.json
  def create
    @fourd = Fourd.new(fourd_params)

    respond_to do |format|
      if @fourd.save
        format.html { redirect_to @fourd, notice: 'Fourd was successfully created.' }
        format.json { render :show, status: :created, location: @fourd }
      else
        format.html { render :new }
        format.json { render json: @fourd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fourds/1
  # PATCH/PUT /fourds/1.json
  def update
    respond_to do |format|
      if @fourd.update(fourd_params)
        format.html { redirect_to @fourd, notice: 'Fourd was successfully updated.' }
        format.json { render :show, status: :ok, location: @fourd }
      else
        format.html { render :edit }
        format.json { render json: @fourd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fourds/1
  # DELETE /fourds/1.json
  def destroy
    @fourd.destroy
    respond_to do |format|
      format.html { redirect_to fourds_url, notice: 'Fourd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fourd
      @fourd = Fourd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fourd_params
      params.fetch(:fourd, {})
    end
end
