# 1. 원하는 메뮤들을 저장한다.
#2. 그 매뉴들 중에 하나를 랜덤으로 뽑느다.
#3.뽑은 메뉴를 출력하다.

menu1 = "2층"
menu = ["20층","팟타이","육회","연어회"]

puts menu.methods.sort #배열에 쓸 수 있는

puts menu.sample  #비복원 무작위 추출

puts [20, 100, -40, 0, 14, 14].sort
puts [20, 100, -40, 0, 14, 14].sort.reverse.sample