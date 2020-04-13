module ApplicationHelper
  def distance
    # position 0 is the displayed text and position 1 is the tag
    [
      ['1 Mile', '1 Mile'],
      ['5 Miles', '5 Miles'],
    ]
  end
  
  def prices
    # position 0 is the displayed text and position 1 is the css tag
    [
      ['$', '1'],
      ['$$', '2'],
      ['$$$', '3'],
      ['$$$$', '4'],
    ]
  end
end
