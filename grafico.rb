data = [5, 3, 2, 5, 10]

def chart(arr)
    max = arr.max
    arr.each do |num|
        puts "|" + "**"*num
    end
    print ">" + "--"*max
    print "\n"
    (1..max).each{|n| print "#{n} "}
end
chart(data)