class ScaffoldsController < ApplicationController
  before_action :set_scaffold, only: [:show, :edit, :update, :destroy]

  # GET /scaffolds
  # GET /scaffolds.json
  def index
    @scaffolds = Scaffold.all
  end

  # GET /scaffolds/1
  # GET /scaffolds/1.json
  def show
  end

  # GET /scaffolds/new
  def new
    @scaffold = Scaffold.new
  end

  # GET /scaffolds/1/edit
  def edit
  end

  # POST /scaffolds
  # POST /scaffolds.json
  def create
    @scaffold = Scaffold.new(scaffold_params)

    respond_to do |format|
      if @scaffold.save
        format.html { redirect_to @scaffold, notice: 'Scaffold was successfully created.' }
        format.json { render :show, status: :created, location: @scaffold }
      else
        format.html { render :new }
        format.json { render json: @scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scaffolds/1
  # PATCH/PUT /scaffolds/1.json
  def update
    respond_to do |format|
      if @scaffold.update(scaffold_params)
        format.html { redirect_to @scaffold, notice: 'Scaffold was successfully updated.' }
        format.json { render :show, status: :ok, location: @scaffold }
      else
        format.html { render :edit }
        format.json { render json: @scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffolds/1
  # DELETE /scaffolds/1.json
  def destroy
    @scaffold.destroy
    respond_to do |format|
      format.html { redirect_to scaffolds_url, notice: 'Scaffold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scaffold
      @scaffold = Scaffold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scaffold_params
      params.require(:scaffold).permit(:review, :product_id, :user_id, :rating, :description)
    end
end
