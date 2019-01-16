class PregnancyWeeksInfo::CLI

  #this method will create the week objects and greets the user
  def call
    #create new instances of weeks from pregnancy website
    PregnancyWeeksInfo::Scraper.new.make_weeks
    puts ""
    puts "Hello, and Welcome to Discovering all the miraculous events during the 42 Weeks of Pregnancy!"
    start
  end

  #the start method
  def start
    puts ""
    puts "Which pregnancy weeks would you like more info?"
    puts "Enter F: First Trimester   Weeks 1-13"
    puts "Enter S: Second Trimester  Weeks 14-27"
    puts "Enter T: Third Trimester   Weeks 28-42"

    input = gets.strip.downcase

    if ["f", "s", "t"].include? input

        print_weeks(input)

        puts ""
        puts "Which week would you like more information?"

        input = gets.strip.downcase

        print_week(input)

        puts ""
        puts "Would you like to see another week? Y/N"

        input = gets.strip.downcase

        if input == "y"
          start
        elsif input == "n"
          puts ""
          puts "Thanks for stopping by to learn more about you and your baby! "
          puts ""
          exit
        else
          puts ""
          puts "I don't understand that answer."
          start
        end

    elsif (1..42).to_a.include? input.to_i
      puts ""
      print_week(input)

      puts ""
      puts "Would you like to see another week? Y/N"

      input = gets.strip.downcase

      if input == "y"
        start
      elsif input == "n"
        puts ""
        puts "Thank you! Have a great day!"
        exit
      else
        puts ""
        puts "I don't understand that answer."
        start
      end

    else
      puts ""
      puts "I don't understand the answer"
      start
    end
  end

  #prints the week, along with weight, fruit, and weeks left for each week
  def print_weeks(input)

    if input == "f" then
      PregnancyWeeksInfo::Week.all.each_with_index do |week, i|
        if i < 13 then
          puts "[Week " + (i+1).to_s + "] " + week.weightUS + " ||| " + week.weightMetric + " ||| size of a/an " + week.fruit + " ||| "+ week.weeks_left + " weeks to go!"
        end
      end
    elsif input == "s" then
      PregnancyWeeksInfo::Week.all.each_with_index do |week, i|
        if i > 12 && i < 27 then
          puts "Week " + (i+1).to_s + ": "

        end
      end
    else
      PregnancyWeeksInfo::Week.all.each_with_index do |week, i|
        if i > 26 then
          puts "Week " + (i+1).to_s + ": "
        end
      end
    end
  end

  #prints the week - gives all info associated with given week
  def print_week(input)
  end


end
