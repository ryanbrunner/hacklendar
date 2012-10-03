class CalendarEntry < ActiveRecord::Base
  attr_accessible :entry, :entry_at, :title

  validates :title, :presence => true
  validates :entry, :presence => true
  validates :entry_at, :presence => true

  def self.for_month(year, month)
    start_date = Date.new(year, month).beginning_of_month
    end_date = Date.new(year, month).end_of_month

    where(:entry_at => start_date..end_date)
  end
end
