require 'nokogiri'

file = File.open('scrap.html')

html = Nokogiri::HTML(file)
puts html.css("p")[0]      #태그로 찾아준다 (p태그를 찾아주는 코드)

puts html.css("h1")

#cEtc > div.section_features > div:nth-child(2) > div.info_kospi > ol > li:nth-child(1) > span.tit_rank > a