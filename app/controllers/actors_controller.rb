class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    # render json: actors
  end

  def show
    @actor = Actor.find(params[:id])
    # render json: actor
  end

  def create
    @actor = Actor.create!(actor_params)
    # render json: actor
    redirect_to actors_path
  end

  def update
    @actor = Actor.find(params[:id])
    @actor.update!(actor_params)
    # render json: actor
    redirect_to actors_path
  end

  def destroy 
    @actor = Actor.find(params[:id])
    @actor.destroy!
    # render plain: "actor ELIMINATED"
    redirect_to actors_path
  end

  private

  def actor_params
    params.require(:actor).permit(:name, :year_of_birth, :car_id )
  end
end
