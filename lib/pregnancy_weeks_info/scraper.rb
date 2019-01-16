class PregnancyWeeksInfo::Scraper

  def get_all_links
    doc = Nokogiri::HTML(open("https://www.whattoexpect.com/pregnancy/week-by-week/"))
    links = []

    43.times do |i|
      link = doc.css(".sublanding-modules__module__promos__promo__texts__title")[i]['href']
      if link.include? "weeks-1-and-2" then
        links << "https://www.whattoexpect.com" + link
        links << "https://www.whattoexpect.com" + link
      elsif link.include? "week-" then
        links << "https://www.whattoexpect.com" + link
      end
    end

    links
  end

  def get_page(link)
      Nokogiri::HTML(open(link))
  end

  def scrape_all_weeks
    get_all_links.each do |link|
      self.get_page(link).css(".intro")
    end
  end

  def make_weeks
      scrape_all_weeks.each do |wk|
        PregnancyWeeksInfo::Week.new_from_page(wk)
      end
  end

end
