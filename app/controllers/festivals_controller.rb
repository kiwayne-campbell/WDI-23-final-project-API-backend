class FestivalsController < ApplicationController
  before_action :set_festival, only: [:show, :favorite, :update, :destroy, :unfavorite]

  # GET /festivals
  def index

    if params[:q]
      @festivals = Festival.where("festival_name ILIKE :q OR location ILIKE :q", q: "%#{params[:q]}%")
    else
      @festivals = Festival.all
    end

    render json: @festivals
  end

  # GET /festivals/featured
  def featured
    @festivals = Festival.all.sample(3)
    render json: @festivals
  end

  # GET /festivals/1
  def show
    render json: @festival, include: ['users', 'comments', 'comments.user']
  end

  # POST /festivals/:id/favorite
  def favorite
    @festival.users << current_user
    render json: @festival
  end

  # POST /festivals/:id/unfavorite
  def unfavorite
    @festival.users.delete(current_user)
    render json: @festival
  end

  # POST /festivals
  def create
    @festival = Festival.new(festival_params)

    if @festival.save
      render json: @festival, status: :created, location: @festival
    else
      render json: @festival.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /festivals/1
  def update
    if @festival.update(festival_params)
      render json: @festival
    else
      render json: @festival.errors, status: :unprocessable_entity
    end
  end

  # DELETE /festivals/1
  def destroy
    @festival.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_festival
      @festival = Festival.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def festival_params
      params.require(:festival).permit(:cost, :start, :finish, :minimum_age, :location, :details, :image, :festival_name, :latitude, :longitude, user_ids:[])
    end
end
