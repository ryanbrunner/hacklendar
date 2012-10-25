class CalendarEntriesController < ApplicationController
  def index
    redirect_to Time.now.strftime("/%Y/%m/%d")
  end

  def new
    @calendar_entry = CalendarEntry.new(entry_at: params[:date])
    render
  end

  def create
    @calendar_entry = CalendarEntry.create(params[:calendar_entry])
    if @calendar_entry.valid?
      redirect_to @calendar_entry.entry_at.strftime("/%Y/%m/%d")
    else
      render 'new'
    end
  end
end
