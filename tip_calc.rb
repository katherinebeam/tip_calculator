def decimals(number)
	sprintf ('%.2f' % number)
end

def ask(question)
	puts question
end

def tip_corrector(number)
	if number > 1
		number / 100
	elsif number < 100 
		puts "You can't enter a negtive tip amount!"
	else
		number 
	end
end

def separator
	puts nil, ("*" * 70)
end


separator
puts "WYNCODE PIZZA \n\n\n 400 NW 26th St \n Miami, FL 33127 \n +1-305-720-2422".center(125)
separator
puts "******VISIT US AT WYNCODEPIZZA.COM*******".center(70)
separator

ask("How much is the bill?")
bill = gets.chomp.to_f
ask("What is the tip percentage?")
tip_percent = gets.chomp.to_f
tip = tip_corrector(tip_percent)
ask("How many people are splitting the check?")
people = gets.chomp.to_f
total = (bill + (bill * tip))
per_person = total/people
total_per_person = decimals(per_person)

separator

puts "The total cost of the check with tip included is $" + decimals(total)
puts "The total per person is $" + decimals(total_per_person) 

separator
puts "******VISIT US AT WYNCODEPIZZA.COM*******".center(70)
separator


#Nicely Done! Katherine!
