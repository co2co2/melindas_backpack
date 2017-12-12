class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = ['pants','shirt']
    prepare
  end

  def items
    @items
  end

  def weather
   @attributes[:weather]
  end

  def day_of_week
    @attributes[:day_of_week]
  end

  def prepare
    consider_weather
    gym_day
    consider_day_of_week

  end

  def consider_weather
    # Ensure appropriate clothing is added to backpack
    if weather == 'rainy'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'jacket'

    end
  end

  def consider_day_of_week
    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

  def gym_day
    # Ensure gym shoes are added to backpack on Monday and Thursdays.
    if day_of_week == 'monday' || day_of_week == 'thursday'
        @items << 'gym shoes'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def packing_list_summary
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{day_of_week}, Weather: #{weather}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
