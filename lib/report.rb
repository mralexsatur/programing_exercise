require 'addressable/uri'

class Report

  SCHEMES = %w(http https)

  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def valid_url?
    parsed = Addressable::URI.parse(@url) or return false
    SCHEMES.include?(parsed.scheme)
    rescue Addressable::URI::InvalidURIError
      false
  end

  # def loading_list
  #   @ = []
  #   file = File.open("sample_data.txt", "r")
  #   file.readlines.each do |line|
  #     text << line.chop
  #   end
  #   file.close
  # end
  
end