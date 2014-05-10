class Timer

	attr_accessor :seconds, :time_string

	@seconds = 0

	def initialize
		@seconds = 0
	end

	def seconds
		@seconds
	end

	
	hour_string = ""
	minute_string = ""
	second_string = ""

	

	def time_string
		hours = 0
		minutes = 0
		seconds = 0

		hours = @seconds/3600
		minutes = (@seconds-hours*3600)/60
		seconds = @seconds-hours*3600-minutes*60
		

		if hours >= 10	
			hour_string = "#{hours}"
		else
			hour_string = "0#{hours}"
		end

		if minutes >= 10	
			minute_string = "#{minutes}"
		else
			minute_string = "0#{minutes}"
		end

		if seconds >= 10	
			second_string = "#{seconds}"
		else
			second_string = "0#{seconds}"
		end
		@time_string = hour_string + ":" + minute_string + ":" + second_string
		return @time_string
	end

end
