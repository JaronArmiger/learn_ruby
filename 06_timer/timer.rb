class Timer
  def initialize
  	@seconds = 0
  	@time_string = "00:00:00"
  end

  def padded(x)
  	if x.to_s.size == 1
  		x = '0' + x.to_s
  	else
  		x = x.to_s
  	end
  	x
  end

  def seconds=(seconds)
  	@seconds = seconds
  end

  def seconds
  	@seconds
  end


  def time_string
	hours = 0
	minutes = 0
	seconds = @seconds
	while seconds > 60 
	  	if seconds / 3600 >= 1
	        hours = seconds / 3600
	        seconds -= (3600 * hours)
	        
	  	elsif @seconds / 60 >= 1
	  		minutes = seconds / 60
            seconds -= (60 * minutes)

	  	end
	end
  	@time_string = padded(hours) + ':' + padded(minutes) + ':' + padded(seconds)
  end


end

