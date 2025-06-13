require 'liquid'
require 'date'

module ToDate
  def to_date(time)
    date = Date.parse(time.to_s)
    return date
  end
end

Liquid::Template.register_filter(ToDate)
