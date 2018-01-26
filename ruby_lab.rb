
#!/usr/bin/ruby
###############################################################
#
# CSCI 305 - Ruby Programming Lab
#
# Keefer Sands
# keefer212@gmail.com
#
###############################################################

$bigrams = Hash.new # The Bigram data structure
$name = "Keefer Sands"

def cleanup_titles(title)
		temp = title.split('<SEP>')
		title = temp[2]
		p title
		return title
end
# function to process each line of a file and extract the song titles
def process_file(file_name)
	puts "Processing File.... "
	lines = []
	#begin
		IO.foreach(file_name) do |line|
			line = cleanup_titles(line)
			lines << line
			# do something for each line
		end
		puts "Finished. Bigram model built.\n"
	#rescue
		#STDERR.puts "Could not open file"
		#exit 4
	#end
end

# Executes the program
def main_loop()
	puts "CSCI 305 Ruby Lab submitted by #{$name}"

	if ARGV.length < 1
		puts "You must specify the file name as the argument."
		exit 4
	end

	# process the file

	process_file(ARGV[0])

	# Get user input
end

if __FILE__==$0
	main_loop()
end
