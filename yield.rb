def hello
    #puts "hello"
    name = "yr"
    puts "yield 전"
    yield(name)  #(다른 block에게) 양보하다. 양도하다    #그냥 yield라고 써도 되지만 ( ) 안에 인자(임의의 변수 설정)를 넣을 수도 있다. 
                                    #==> 밑에서 임시변수로 쓸 수 있다
                                    #단, name이 뭔지 정의해 줘야 한다. (위에 name="yr")
    puts "yield 후"
end

hello() do puts "hello" end

hello() do |name|
    puts "hello " + name
end

hello() {|name| puts "hello " + name}   #==> 함수 뒤에 { }가 붙었다는 것은 그 함수 정의한 내용 안에 yield가 무조건 있다는 것!!!

#ex.
#class Array
#   def each()
#       yield
#   end
# end

#==> 배열 array method 중에 each 함수가 정의되어 있는 것이고, 
#[   ].each {  }   혹은   [  ].each do ... end   가 있다면 (method함수 뒤에 블록이 있다면,)
#무조건 그 함수 정의된 내용 안에 yield가 있는 것이다