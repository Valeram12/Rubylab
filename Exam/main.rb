require 'date'

class Mail
  attr_accessor :dateGet, :dateRead, :title, :tag

  def initialize(dateGet, dateRead, title, tag)
    @dateGet = dateGet
    @dateRead = dateRead
    @title = title
    @tag = tag

  end

  def self.filter_by_tag(mails, tag)
    mails.select { |mail| mail.tag == tag }
  end

  def self.filter_by_date_get(mails, date_start, date_end)
    mails.select { |mail| mail.dateGet <= date_end and date_start <= mail.dateGet }
  end

  def self.filter_by_title(mails, title)
    mails.select { |mail| mail.title == title }
  end


end

class Sending < Mail
  attr_accessor :time

  def initialize(date_get, date_read, title, tag, time)
    super(date_get, date_read, title, tag)
    @time = time
  end

end

class Parcel < Mail
  attr_accessor :weight

  def initialize(date_get, date_read, title, tag, weight)
    super(date_get, date_read, title, tag)
    @weight = weight
  end
end

class Letter < Mail
  attr_accessor :genre

  def initialize(date_get, date_read, title, tag, genre)
    super(date_get, date_read, title, tag)
    @genre = genre
  end
end


mails = [
  Sending.new(Date.new(2022, 12, 8), nil, "Exam", "useful", 30),
  Sending.new(Date.new(2022, 12, 10), Date.new(2022, 12, 10), "Exam", "Spam", 23),
  Sending.new(Date.new(2022, 12, 8), nil, "Exam", "useful", 30),
  Sending.new(Date.new(2022, 12, 10), Date.new(2022, 12, 10), "Exam", "Spam", 23),
  Sending.new(Date.new(2022, 12, 8), nil, "Exam", "useful", 30),
  Parcel.new(Date.new(2022, 11, 9), nil, "Ad", "Spam", 55),
  Sending.new(Date.new(2022, 12, 10), Date.new(2022, 12, 10), "Exam", "Spam", 23),
  Letter.new(Date.new(2022, 12, 8), Date.new(2022, 12, 15), "OS", "Spam", "Fantasy"),
  Letter.new(Date.new(2022, 12, 1), Date.new(2022, 12, 8), "RO", "useful", "Cool"),
  Parcel.new(Date.new(2022, 11, 9), nil, "Ad", "Spam", 55),
  Letter.new(Date.new(2022, 12, 8), Date.new(2022, 12, 15), "OS", "Spam", "Fantasy"),
  Letter.new(Date.new(2022, 12, 8), Date.new(2022, 12, 15), "OS", "Spam", "Fantasy"),
  Parcel.new(Date.new(2022, 11, 9), nil, "Ad", "Spam", 55),
  Parcel.new(Date.new(2022, 8, 4), Date.new(2022, 12, 10), "Ruby", "useful", 2048),
  Parcel.new(Date.new(2022, 8, 4), Date.new(2022, 12, 10), "Ruby", "useful", 2048),
  Parcel.new(Date.new(2022, 11, 9), nil, "Ad", "Spam", 55),
  Parcel.new(Date.new(2022, 11, 9), nil, "Ad", "Spam", 55),
  Parcel.new(Date.new(2022, 11, 9), nil, "Ad", "Spam", 55),

]

p Mail.filter_by_tag(mails, 'useful')
p Mail.filter_by_tag(mails, 'Spam')
p Mail.filter_by_title(mails, 'Ruby')
p Mail.filter_by_title(mails, 'Exam')
p Mail.filter_by_date_get(mails, Date.new(2022, 11, 1), Date.new(2022, 12, 1))
