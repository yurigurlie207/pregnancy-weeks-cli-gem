class PregnancyWeeksInfo::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.whattoexpect.com/pregnancy/week-by-week/weeks-1-and-2.aspx"))
  end

  def scrape_weeks_index
    self.get_page.css(".intro")
  end

  def make_weeks
    wk = scrape_weeks_index

    # scrape_weeks_index.each do |wk|
      PregnancyWeeksInfo::Week.new_from_sub_pages(wk)
    # end

    binding.pry

  end

end
