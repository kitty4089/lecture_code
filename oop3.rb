class Numeric
    def to_bitcoin
        self * 7515000
    end
end

puts 50.to_bitcoin


class String
    def yell
        #입력한 글자에 "!!" 뒤에 붙인다.
        self+"!!"            #self 오브젝트 그 자체
    end
end

puts "야".yell