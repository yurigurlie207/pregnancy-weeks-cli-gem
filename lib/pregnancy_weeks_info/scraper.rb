class PregnancyWeeksInfo::Scraper

  #gets all the links for each week from the main weeks page
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

  #gets the xml object for a specific week
  def get_page(link)
      Nokogiri::HTML(open(link))
  end

  #gets the xml object for all links
  def scrape_all_weeks
    week_xml_snippets= {}

    get_all_links.each do |link|
      week_xml_snippets[link] = self.get_page(link).css(".intro")
    end

    week_xml_snippets
  end

  #creates instances of all the weeks
  def make_weeks
      scrape_all_weeks.each do |link, wkObj|

        alt_tags = wkObj.css('.wbw-hero__circles__fruit img').map{ |i| i['alt'] }
        sizeUS = wkObj.css("#sizeUs").text
        sizeMetric = wkObj.css("#sizeMetric").text
        alt = alt_tags.first
        weeks_left = wkObj.css(".wbw-hero__circles__weeks__circle__text").first.text

        doc ||= Nokogiri::HTML(open(link))
        symptoms ||= doc.css(".wbw-symptoms__list__item__body-c__headline").map { |symptom| symptom.text }
        readings ||= doc.css(".trending__c__list__item__title").map { |reading| reading.text }

        PregnancyWeeksInfo::Week.new(sizeUS, sizeMetric, alt, weeks_left, link, symptoms, readings)
      end
  end

end
