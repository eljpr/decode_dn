def decode(message_file)
  # First we need to be able to read the content of the file and store it in a variable
  lines = File.readlines(message_file)
  # Initialize an array to store the decoded words
  decoded_words = []

  # Iterate over each line in the file with index
  lines.each_with_index do |line, index|
    # Split the line into number and word - make sure to remove any whitespace using .strip method
    split_arr = line.strip.split(' ')
    # Convert the number to an integer
    number = split_arr[0].to_i
    word = split_arr[1]
    if (number = (index * (index + 1)) / 2 + 1)
      # If it is, add the word to the decoded words array
      decoded_words << word
    end
  end

  # Join the decoded words with spaces to form the decoded message
  decoded_message = decoded_words.join(' ')

  #Finally we return the decoded message
  decoded_message
end

puts decode('coding_qual_input.txt')
