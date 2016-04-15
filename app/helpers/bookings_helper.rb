module BookingsHelper
  def booking_status date
    if(date == Date.today)
      "Today"
    elsif(date < Date.today)
      "Expired"
    else
      diff = (date - Date.today).to_i
      "in the next" + diff + " day(s)."
    end
  end
end
