class DoggosController < ApplicationController
  before_action :set_doggo, only: [:show, :update, :destroy]

  # GET /doggos
  def index
    @doggos = Doggo.all

    render json: @doggos
  end

  # GET /doggos/1
  def show
    render json: @doggo
  end

  # POST /doggos
  def create
    @doggo = Doggo.new(doggo_params)

    if @doggo.save
      render json: @doggo, status: :created, location: @doggo
    else
      render json: @doggo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doggos/1
  def update
    if @doggo.update(doggo_params)
      render json: @doggo
    else
      render json: @doggo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doggos/1
  def destroy
    @doggo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doggo
      @doggo = Doggo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doggo_params
      params.require(:doggo).permit(:image)
    end
end
