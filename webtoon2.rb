#---------------------#
# 다음 웹툰 json ------#
# 가지고 놀기!! -------#
# + 이제 모든 요일!! +--#
#----------------------#


require 'httparty'
require 'pp'
require 'json'

days = ["mon","tue","wed","thu","fri","sat","sun"]
all_webtoons = [] # mon~sun 월~일까지 모든 웹툰들을 다 넣을 배열 만든다

days.each do |day|
    url = "http://webtoon.daum.net/data/pc/webtoon/list_serialized/#{day}"
    response = HTTParty.get(url)    #각 요일 url을 httparty로 요청. 그리고 그 요청한 페이지 내용들을 response에 담는다
    data = JSON.parse(response.body)    #response에 담긴 json형태 코드들을 해시로 바꿔서(parse) data변수에 담는다
    data["data"].each do |webtoon|
        all_webtoons.push({
        "title"=> webtoon["title"], 
        "introduction"=> webtoon["introduction"]
    })
    end
end

puts all_webtoons.size

all_webtoons.each do |w|
    puts w["title"]
    puts w["introduction"]
end