class StaticController < ApplicationController
  def home
  end

  def episodes
  	@episodes = Course.first.episodes.all
  	
  	render json: { data: @episodes }
  end
end
