#---------------------#
# 다음 웹툰 json ------#
# 가지고 놀기!! -------#
# + 여기는 월요일 웹툰 +#
# + 만 하는 코드에용 +--#
#----------------------#


require 'httparty'
require 'pp'
require 'json'

url = "http://webtoon.daum.net/data/pc/webtoon/list_serialized/mon"
response = HTTParty.get(url)        #요청을 보내고 그것을 response에 담겠다
                                    #file = File.read(boxoffice.json)
#puts response
# pp response


data = JSON.parse(response.body) #response 안에 들어있는 json을 루비 해시로 바꾸는 것
#pp data   #json형태가 해시로 바뀐 것을 알 수 있다



#json페이지에서 뽑을 정보들을 뽑아보자 - 작품 한 단위 안에 있는 것들을 찬찬히 보면서 유용한 것들 뽑아본다
#title, appthumnailimage(사진), introduction(소개글), genre(장르 ex. 스릴러 등등), averageScore(평점인듯)

#--------------------------------------------------------------------------------------------------------------#
#각 정보들이 어떻게 들어가면 나오는 지 해보면서 확인해 본당!!

# pp data["data"][0]      #각 웹툰들이 들어있는 가장 상위 배열이 data인 듯하다. [0] 뽑으면 첫 번째 웹툰이 나오겠지
#pp는 한글 인코딩 안되므로 한글이 필요할 땐 puts로 찍어준다
# puts data["data"][0]["title"]
# puts data["data"][0]["appTumbnailImage"] #뽑아보면 또 해쉬가 나옴 -> 더 들어가야 이미지 url 얻을 수 있음을 알 수 있음
# puts data["data"][0]["appTumbnailImage"]["url"]
# puts data["data"][0]["cartoon"]["genres"][0]["name"]    #장르는 한 작품당 한 개 이상일 수도 있으니 genres (.class확인해보니 배열임) 배열로 돼있음
#--------------------------------------------------------------------------------------------------------------#

# webtoon = {         # Hash를 만들어 준다
#     title: data["data"][0]["title"],
#     appThumnailImage: data["data"][0]["appThumbnailImage"]["url"],
#     introduction: data["data"][0]["introduction"],
#     genre: data["data"][0]["cartoon"]["genres"][0]["name"],
#     averageScore: data["data"][0]["averageScore"]
# }

# #pp webtoon.class    # ==>해쉬
# puts webtoon


# 이제 웹툰 한 개뿐 아니라 모든 웹툰을 뽑기 위해 반복문으로 만들어주자
# all_webtoons = [] #웹툰들 다 넣을 배열을 만들어 준당        #[{웹툰1}, {웹툰2}, {웾툰3}]
# data["data"].each do |webtoon|
#     #all_webtoons안에 모든 웹툰 정보를 해시형태로 push하겠다
#     # puts webtoon.push
#     puts webtoon["title"]
#     puts webtoon["introduction"]
# end

all_webtoons = [] #웹툰들 다 넣을 배열을 만들어 준당        #[{웹툰1}, {웹툰2}, {웾툰3}]
data["data"].each do |webtoon|
    #all_webtoons안에 모든 웹툰 정보를 해시형태로 push하겠다
    all_webtoons.push({
        "title"=>webtoon["title"], 
        "introduction"=>webtoon["introduction"]
    })
end
# puts all_webtoons    #puts가 한글을 보여지게 해주는데 (pp는 한글 인코딩 안됨) 
                       #지금은 배열들 데이터들 한 번에 보여주는 거라 한글 아닌데
                       #한 요소씩 뽑으면 한글로 잘 보여줄 것이당.
#ex.
# puts all_webtoons[0]["title"]

