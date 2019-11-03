#!/usr/bin/env ruby

text = gets.chomp

splitText = text.chars.to_a

word = ""
splitTextArray = []
splitTextArrayTest = []
symbols = Hash.new

splitText.each do |x|
	if (x == " ")
		splitTextArrayTest.push(word)
		splitTextArrayTest.push(" ")
		word = ""
	elsif x =~ /\W/
		splitTextArrayTest.push(word)
		word = x
	else
		word << x
	end
end
splitTextArrayTest.push(word)

place = 0
splitTextArrayTest.each do |x|
	if x =~ /\W/
		symbols[place] = x
	end

	place += 1
end

splitTextArrayTest.each do |x|
	next if x =~ /\W/
	splitTextArray.push(x)
end
splitTextArray.reverse!

symbols.each do |place, symbol|
	splitTextArray.insert(place, symbol.to_s)
end

splitTextArray.each do |x|
	print "#{x}"
end
puts