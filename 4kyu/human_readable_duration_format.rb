=begin
Kata link: https://www.codewars.com/kata/52742f58faf5485cae000b9a
Your task in order to complete this Kata is to write a function which formats a duration, given as a number of seconds,
in a human-friendly way.

The function must accept a non-negative integer. If it is zero, it just returns "now".
Otherwise, the duration is expressed as a combination of years, days, hours, minutes and seconds.

It is much easier to understand with an example:
format_duration(62)    # returns "1 minute and 2 seconds"
format_duration(3662)  # returns "1 hour, 1 minute and 2 seconds"
For the purpose of this Kata, a year is 365 days and a day is 24 hours.
=end

def format_duration(seconds)
	return 'now' if seconds == 0

	mins, secs = seconds.divmod(60)
	hrs, mins = mins.divmod(60)
	days, hrs = hrs.divmod(24)
	years, days = days.divmod(365)

	values = [years, days, hrs, mins, secs].zip(["year", "day", "hour", "minute", "second"] )
	values.reject! { |elem| elem[0] < 1 }

	values.each { |pair| pair[1] << "s" if pair[0] > 1 }
	values.map! { |pair| pair.join(" ") }

	values.length == 1 ? values.join : values[0..-2].join(", ") + " and " + values[-1]
end
