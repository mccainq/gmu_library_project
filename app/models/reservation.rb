class Reservation < ActiveRecord::Base
  before_create :set_reservation_dates
  belongs_to :user
  belongs_to :book

  private

  def set_reservation_dates
    self.reserved_on = Time.now.gmtime
    self.due_on = 7.days.since(self.reserved_on)
  end
end
