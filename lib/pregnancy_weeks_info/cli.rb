class PregnancyWeeksInfo::CLI

  #this method will create the week objects and greets the user
  def call
    #create new instances of weeks from pregnancy website
    PregnancyWeeksInfo::Scraper.new.make_weeks
    puts ""
    puts "Hello, and Welcome to Discovering all the miraculous events during the 42 Weeks of Pregnancy!"
    start
  end

  #the start method prompts the user and decide to either prompt further, print or quit
  def start
    puts ""
    puts "Which pregnancy weeks would you like more info?"
    puts "Enter F: First Trimester   Weeks 1-13"
    puts "Enter S: Second Trimester  Weeks 14-27"
    puts "Enter T: Third Trimester   Weeks 28-42"
    puts "Enter X to exit anytime"

    input = gets.strip.downcase

    if ["f", "s", "t"].include? input

        print_weeks(input)

        puts ""
        puts "Which week would you like more information?"

        input = gets.strip.downcase

        if (1..42).to_a.include? input.to_i
          print_week(input)
        elsif input == "x"
          puts ""
          puts "Thanks for stopping by to learn more about you and your baby! "
          puts ""
          exit
        else
          puts ""
          puts "I don't understand that answer."
          start
        end

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
        elsif input == "x"
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
        puts "Thanks for stopping by to learn more about you and your baby! "
        puts ""
        exit
      elsif input == "x"
        puts ""
        puts "Thanks for stopping by to learn more about you and your baby! "
        puts ""
        exit
      else
        puts ""
        puts "I don't understand that answer."
        start
      end

    elsif input == "x"
      puts ""
      puts "Thanks for stopping by to learn more about you and your baby! "
      puts ""
      exit
    else
      puts ""
      puts "I don't understand the answer"
      start
    end
  end

  #prints all the weeks in the selected trimester
  def print_weeks(input)

    if input == "f" then
      PregnancyWeeksInfo::Week.all.each_with_index do |week, i|
        if i < 13 then
          puts "[Week " + (i+1).to_s + "]  " + week.weightUS + " | " + week.weightMetric + " | size of a/an " + week.fruit + " | "+ week.weeks_left + " more week(s) to go!"
        end
      end
    elsif input == "s" then
      PregnancyWeeksInfo::Week.all.each_with_index do |week, i|
        if i > 12 && i < 27 then
          puts "[Week " + (i+1).to_s + "]  " + week.weightUS + " | " + week.weightMetric + " | size of a/an " + week.fruit + " | "+ week.weeks_left + " more week(s) to go!"
        end
      end
    else
      PregnancyWeeksInfo::Week.all.each_with_index do |week, i|
        if i > 26 then
          puts "[Week " + (i+1).to_s + "]  " + week.weightUS + " | " + week.weightMetric + " | size of a/an " + week.fruit + " | "+ week.weeks_left + " more week(s) to go!"
        end
      end
    end
  end

  #prints the week - gives all info associated with given week
  def print_week(input)
    puts "------------------------------------------------"
    puts "INFORMATION FOR WEEK " + input + " OF PREGNANCY"
    puts "------------------------------------------------"
    puts ""

    week = PregnancyWeeksInfo::Week.find(input.to_i)

    puts "Weight(US/Metric): " + week.weightUS + " / " + week.weightMetric
    puts "Size: " + week.fruit
    puts  "Time left: " + week.weeks_left + " more week(s) to go!"
    puts ""

    puts "SYMPTOMS you may experience for this week:"
    week.symptoms.each do |symptom|
      puts "    " + symptom
    end
    puts ""
    puts "ADDITIONAL READINGS to look into for this week:"
    week.readings.each do |reading|
        puts "     " + reading
    end

    puts ""
    puts "Read more about this week here: " + week.url
    puts ""
  end


end
