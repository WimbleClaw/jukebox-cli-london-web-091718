require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(song_array)
  song_array.each_with_index do |song, index|
    puts "#{index +1}. #{song}"
  end
end

def play (song_array)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if song_array.include?(input)
    puts "Playing #{song_array}"
  elsif (1..9).include?(input.to_i) 
    puts "Playing #{song_array}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(song_array)
  inital_input = "help"
  until inital_input == "exit"
    if inital_input == "list"
      list(song_array)
    elsif inital_input == "play"
      play(song_array)
    elsif inital_input == "help"
      help
    end
    puts "Please enter a command:"
    inital_input = gets.strip.downcase
  end
  exit_jukebox
end












