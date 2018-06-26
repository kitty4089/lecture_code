numbers = [1,2,3,4,5]

num_str = []
numbers.each do |num|
    #num.to_s   #실제로 numbers 요소를 스트링으로 바꾸는 게 아니고 잠깐 바꾸는 것. 아예 값을 바꾸는 것은? (to_s! 이런 건 없당..) 
                #=> 새로 배열 만들어서 거기에 push로 넣는다.
    num_str.push(num.to_s)
end

#num_str.each {|n| puts n.class}

#map  method를 써서 더 간단히 배열 안의 값을 아예 바꾸는 법 2
#-- 배열 값을 [6,7,8,9,10]으로
numbers.map! do |num|
    num.to_i + 5 
end

numbers.each {|n| puts n}

#-- 배열 class를 string으로
numbers.map! do |num|
    num.to_s
end

numbers.each {|n| puts n.class}

#-- 위 코드를 { }형식으로 바꾸기
numbers.map! {|num| num += 5}

puts numbers