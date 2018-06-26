require 'httparty'  #우리(나)를 대신해 (url)요청보내주는 애
require 'uri'  #한글 쓰기 위해서 uri로 인코딩 해 줘야 한다. 

url = "https://api.telegram.org/bot"    #반복되는 부분을 url이라는 변수 안에 넣었다

# +bot+token(봇파더에 있다)+/sendMessage?chat_id=XXX&text=hello"

token = "397628463:AAEC4uGnenoBkFna1a3FLbXTdqW-yqCgS2U"

id = " "     #챗봇 아이디 말고 내 아이디 넣어야 함 메시지 보낼 때는
msg = URI.encode("와우 행복한 점심시간")
url + token + "/sendMessage?chat_id=#{id}&text=#{msg}"

#res = HTTParty.get(url+token+"/getMe")    #임시변수 res(response)에 받아온 결과물을 받아온다
#json :  parsing 해서 해쉬처럼 정보를 쓸 수 있다

#hash = JSON.parse(res.body)     #받아온 정보를 해쉬에 담자

HTTParty.get(
    url + token + 
    "/sendMessage?chat_id=#{id}&text=#{msg}"
)

#puts hash