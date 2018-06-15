# launchy 친구를 불러온다 (웹페이지 열어주는 애)
# launchy에게 브라우저 열어달라고 한다

require "launchy"   #launchy 열어달라고 요청
require "uri"

# Launchy.open("http://www.naver.com")   #앞에 대문자임에 유의

# Launchy.open("https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=%EB%B0%95%EC%84%9C%EC%A4%80") 

#익스플로러는 한글이 안먹힘..

# puts "hello" + "안녕" + "루비"

# a = "hello"
# b = "Ruby"

# puts a + " " + b

url = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query="
# #keywords = ["박서준", "공유", "3d프린터"]
# keyword = URI.encode("박서준")   #익스플로러에서 한글 안되니까 바꿔주는거. 위에서 uri 불러와서 써야함 유의

# keyword = URI.encode(keywords[2])
keywords = ["daum", "google","facebook"]

# puts url + keyword

# Launchy.open(url+keyword)

keywords.each do |key|   #keywords 배열 안에 있는 요소들 한 번씩 반복하면서 그 때마다 key 변수에 넣는다.
    Launchy.open(url + key)  #key는 임시변수라서 여기서만 쓸 수 있는 거. 밖에서는 쓸 수 없다
end

#local variable지역 변수.

#puts key    # 그래서 이렇게 하면 오류남 ㅎㅎ undefined local variables or ~ 라고 함