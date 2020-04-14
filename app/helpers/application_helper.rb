module ApplicationHelper
  def distance
    # position 0 is the displayed text and position 1 is the tag
    [
      ['0.25 Miles', '0.25'],
      ['0.5 Miles', '0.5'],
      ['1 Mile', '1'],
      ['3 Miles', '3'],
      ['5 Miles', '5'],
      ['10 Miles', '10'],
      ['15 Miles', '15'],
      ['20 Miles', '20'],
      ['25 Miles', '25'],
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
