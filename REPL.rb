
def introgame
    @roundcount = 1

puts "\nDo you want to play a guessing game? Yes/Y or No/N?"
choice = gets.chomp.capitalize
  case choice
    when "Yes"
    puts "\nWelcome to life with a newborn!"
    puts "\nIt's midnight and the baby is crying again."
    game
  when "Y"
    puts "\nWelcome to Parenthood!"
    puts "\nIt's midnight and the baby is crying again."
    game
  when "No"
    puts "\nOk, bye."
    gameover
  when "N"
    puts "\nOk, bye."
    gameover
  else
    puts "\nThat isn't going to work.
    "
    introgame
end
end
#You can go for an unlimited amount of rounds.
def roundcount
  @roundcount = @roundcount + 1
   puts "You are on round #{@roundcount}"
end
#There is no specific order needed.
#There are 3 different responses possible. 
#It's just a guessing game of chance.
 def game
    puts "\nIs your baby (H)ungry, (S)leepy, or (P)oopy?"
    sleep(1)
    puts "\nWAAAAAAAH"
    puts "\nWAH WAH WAH"
    sleep(1)
    puts "\nWAAAAAAAH"

   computer = "hsp"[rand(3)].chr
   player = gets.chomp.downcase
    case [player, computer]
      when ['h','h'],['s','s'],['p','p']
        puts "\nAwesome! The baby stopped crying. You're doing great."
        puts "\nThe baby is #{computer}."
        roundcount
        again
      when ['s','p'],['p','h'],['h','s']
        puts "\nWAAAAH! Something else must be wrong! Try again."
        puts "\nThe baby is #{computer}."
        roundcount
        again
      when ['s','h'],['p','s'],['h','p']
        puts "\nDon't just stand there! Help your baby!"
        puts "\nThe baby is #{computer}."
        roundcount
        again
      else
        puts "\nType the first letter of what the baby needs to stop crying!"
        game
      end
end


def again
  #puts "You are on round #{@roundcount}"
      puts "\nDo you want to play again? Yes or No?"
      answer = gets.chomp.capitalize
        case answer
        when "Yes"
          game
        when "Y"
          game
        when "No"
          gameover
        when "N"
          gameover
        else
          puts "\nYou're running away from your crying baby?'"
          again
        end
end

def gameover
  puts "\nYou can't leave! What if the baby poops again!
  "
end


introgame
