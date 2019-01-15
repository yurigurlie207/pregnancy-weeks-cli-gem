class PregnancyWeeksInfo::Scraper

  #
  def get_sub_pages
    doc = Nokogiri::HTML(open("https://www.whattoexpect.com/pregnancy/week-by-week/"))
    links = []

    link = doc.css(".sublanding-modules__module__promos__promo__texts__title")[0]['href']
    binding.pry

    42.times do |i|
      link = doc.css(".sublanding-modules__module__promos__promo__texts__title")[i]['href']
      binding.pry
      links << link
      # if link.include? "weeks-1-and-2" then
      #   links << "https://www.whattoexpect.com" + link
      #   links << "https://www.whattoexpect.com" + link
      # elsif link.include? "week-" then
      #   links << "https://www.whattoexpect.com" + link
      # end
    end

    # binding.pry
    #
    # subpages = doc.css(".sublanding-modules__module__promos__promo__texts__title")[href].each do |subpage|
    #   subpage = "https://www.whattoexpect.com/" + subpage
    #   binding.pry
    # end

  end


  def get_page(subpage)
      Nokogiri::HTML(open(subpage))
  end

  def scrape_weeks_index
    get_sub_pages.each do |subpage|
      self.get_page(subpage).css(".intro")
    end
  end

  def make_weeks
      scrape_weeks_index.each do |wk|
      PregnancyWeeksInfo::Week.new_from_sub_pages(wk)
      end
  end

end
