require 'httparty'  #url 요청해야 하므로 httparty필요
require 'json'

base = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?"   #?가 있어야 뒤의 parameter들을 넘겨줌
key = "  보안 상 없애서 github올립니다아 "
targetDt = "20180703"

response = HTTParty.get(base + "key=" + key + "&" + "targetDt=" + targetDt)

# puts response.body  #.body 는 httparty 한테 있는 method인뎅. 우리가 웹페이지에서 json페이지 보이는대로 담아주는 애당

data = JSON.parse(response.body)

# puts data


#------------------------------------------------
#<1번 과제> 1번 박스오피스 '마녀'의 정보를 저장한다.
#------------------------------------------------
# 추출할 정보들을 골라보자
#---------------------
# 순위 정보인 rank
# 제목;  title
# 누적매출액; salesAcc
# 누적관객수; audiAcc

rank = data["boxOfficeResult"]["dailyBoxOfficeList"][0]["rank"]
title = data["boxOfficeResult"]["dailyBoxOfficeList"][0]["movieNm"]
sales = data["boxOfficeResult"]["dailyBoxOfficeList"][0]["salesAcc"]
audi = data["boxOfficeResult"]["dailyBoxOfficeList"][0]["audiAcc"]

# puts data["boxOfficeResult"]["dailyBoxOfficeList"][0]["movieNm"]


#------------------------------------------------
#<2번 과제> 전체 영화 (최대 10개랬으니 (itemPerPage)) 10개를 movies 배열에 저장한다.
#------------------------------------------------

# movies= [{영화1},{영화2},{영화3}, ..., {영화10}]
# {"rank" => XXX, "title" => xxx, "sale" => xxx, "audi" => xxx}


movies = []

data["boxOfficeResult"]["dailyBoxOfficeList"].each do |movie|
    movies.push({
        "rank" => movie["rank"],
        "title" => movie["movieNm"],
        "sales" => movie["salesAcc"],
        "audi" => movie["audiAcc"]
    })
end

puts movies