Dir[File.join(File.dirname(__FILE__), "./*.rb")].each { |f| require f }

class HomePage < Page
  def page_path
    "/"
  end

  def body
    nil
  end

  def special_items
    @selenium.find_elements(:class, "special-item").collect do |element|
      SpecialItem.new(element, @selenium)
    end
  end

  def featured_item_carousal
  end

  def recent_products
  end

end
