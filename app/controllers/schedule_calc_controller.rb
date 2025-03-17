# frozen_string_literal: true

class ScheduleCalcController < ApplicationController
  def index
    @departure = params[:departure]
    @arrival = params[:arrival]
    @num_of_vehicles = params[:vehicles]
    @start_time = Time.zone.parse('06:00')
    @end_time = Time.zone.parse('00:00') + 1.day

    calc_schedule if @departure && @arrival && @num_of_vehicles
  end

  private

  def calc_schedule
    @every_length = ((Time.zone.parse(@arrival) - Time.zone.parse(@departure)) / 60) / @num_of_vehicles.to_i
    @num_of_times = ((@end_time - @start_time) / 60) / @every_length
  end
end
