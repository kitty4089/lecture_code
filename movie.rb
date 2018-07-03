# boxoffice.json 파일에 있는 내용을 불러와서
# 가지고 놀아보기
# (JSON 알아보기~)

require 'json'
require 'awesome_print'     #깔끔하게 찍어주는(프린트해주는) 거.. 그냥 puts로 찍으면 막 더럽게 나옴.. ap로 찍으면 좀 더 정리돼서 나온다.
#gem 설치 먼저 :  git bash에서  gem install awesome_print


file = File.read('boxoffice.json')  # ( ) 안에 JSON 파일 이름
data = JSON.parse(file) 
#(json 파일)json처럼 돼있는 거를 해쉬로 바꿔주는 코드.(parse)

# 우리가 필요한 데이터
# : 제목, 장르, 관람가능 연령, 감독, 포스터 사진 URL

# data = {
#     "cards"=> [{}, {}, {}, {}],
#     "load_more"=> XXXX,
#     "total"=> YYYY
# }




title = data["cards"][1]["items"][0]["item"]["title"]
# ap data["cards"][0]["items"][0]["item"]

# 1번 과제(장르, 관람연령, 감독, 포스터 URL)
genre = data["cards"][1]["items"][0]["item"]["main_genre"]
rate = data["cards"][1]["items"][0]["item"]["filmrate"] #관람 가능연령
director = data["cards"][1]["items"][0]["item"]["directors"][0]["name"]
poster = data["cards"][1]["items"][0]["item"]["poster"]["original"]


puts title, genre, rate, director, poster




# 2번 과제
# json 파일 안에는 몇 개의 영화가 들어가 있을까?
# =====>  결과는 15였다.(답)  15개 카드가 들어있으므로 ["cards"][0] ~ [14]  까지 있는 것.
list = data["cards"]
ap list.size


# 3번 과제
# 반복문을 쓰면 된다
# movies 라는 새로운 배열을 만들어서. 
# movies = [
#     {
#         "title" => ,
#         "genre" => ,
        

#     }
# ]


list.each do |elem|  #elements
    elem["items"][0]["item"]["title"]
end

movies = []
list.each do |elem|  #elements
    movies.push({
        "title" => elem["items"][0]["item"]["title"],
        "genre" => elem["items"][0]["item"]["main_genre"],
        "director" => elem["items"][0]["item"]["filmrate"],
        "rate" => elem["items"][0]["item"]["directors"][0]["name"],
        "poster" => elem["items"][0]["item"]["poster"]["original"]
    })
end

puts movies