# frozen_string_literal: true

class ScheduleCalcController < ApplicationController
  def index
    @departure = params[:departure]
    @arrival = params[:arrival]
    @num_of_vehicles = params[:num_of_vehicles]
  end
end
