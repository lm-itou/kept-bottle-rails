class BottlesController < ApplicationController
  before_action :set_bottle, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /bottles
  def index
    if params[:all]
      @bottles = Bottle.all
    else
      @bottles = Bottle.where(user_id: current_user.id).order("id asc")
    end
  end

  # GET /bottles/1
  def show
  end

  # GET /bottles/new
  def new
    @bottle = Bottle.new
  end

  # GET /bottles/1/edit
  def edit
  end

  # POST /bottles
  def create
    @bottle = Bottle.new(bottle_params)
    @bottle.user = current_user
    @bottle.status = "active"
    if @bottle.save
      redirect_to @bottle, notice: 'ボトルをキープしました！'
    else
      render :new
    end
  end

  # PATCH/PUT /bottles/1
  def update
    if @bottle.update(bottle_params)
      redirect_to @bottle, notice: 'ボトルの情報を更新しました。'
    else
      render :edit
    end
  end

  # DELETE /bottles/1
  def destroy
    @bottle.destroy
    redirect_to bottles_url, notice: 'ボトルを削除しました。'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bottle
      @bottle = Bottle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bottle_params
      params.require(:bottle).permit(:restaurant_id, :user_id, :status, :picture)
    end
end
