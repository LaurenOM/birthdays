class BirthdayList

	attr_reader :birthdays

	def initialize
		@birthdays = []
	end

	def store_birthday(name,date)

		@birthdays << {name: name, date: date}

		birthdays
	end
	
	def print_birthdays
		@birthdays.each do |hash|
			puts "#{hash[:name]}: #{hash[:date]}"
		end
	end
	
	def today
		Time.now.strftime("%d-%m")
	end 

	def check_age
		Time.now.strftime("%Y").to_i - @birthdays[0][:date][6..9].to_i
	end


	def birthdays_today
		@birthdays.each do |hash|
			if hash[:date][0..4] == today 
				return "It's #{hash[:name]}'s birthday today! They are #{check_age} years old!"
			end
		end
	end
end
