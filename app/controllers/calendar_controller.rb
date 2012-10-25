class CalendarController < ApplicationController

  def show
    year = params[:year] && params[:year].to_i
    month = params[:month] && params[:month].to_i
    day = params[:day] && params[:day].to_i

    @date = Date.new(year, month, day)
    @entries = CalendarEntry.for_month(year, month)
    @day_entries = @entries.select{|ce| ce.entry_at.day == day }

    render
  end

end
