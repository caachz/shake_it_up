class RevItUpFacade
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def name
    @data[:name]
  end

  def avg_rating
    @data[:avg_rating]
  end

  def address
    @data[:location][:display_address].join(" ")
  end

  def price
    @data[:price]
  end

  def category
    if @data[:categories].length == 0
      return "Too cool for labels."
    end
    @data[:categories][0][:title]
  end

  def lat
    @data[:latitude].to_f
  end

  def lng
    @data[:longitude].to_f
  end

  def url
    if @data[:url].length == 0
      return "Too cool for websites."
    end
    @data[:url]
  end
end
