
class Event
  attr_accessor :start_date
  attr_reader :duration
  attr_reader :attendees
  attr_reader :title

  @@all = Array.new

  def initialize(date_of_event, duration, title, attendees)
    @start_date = Time.parse(date_of_event)
    @duration = duration
    @title = title
    @attendees  = attendees
  end

  def postpone_24h
    @start_date += (24 * 3600)
  end

  def end_date
    @start_date + (60 * @duration)
  end

  def is_past?
    @start_date < Time.now
  end

  def is_future?
    Time.now < @start_date
  end

  def is_soon?
    time_between = @start_date - Time.now
    time_between <= 0 && time_between  <= 1800
  end

  def to_s
    puts "> Titre : #{@title}"
    puts "> Date de début : #{@start_date}"
    puts "> Durée : #{@duration}"
    puts "> Invités : #{@attendees}"
  end
end

