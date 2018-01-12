arr = (10...36).map{ |i| i.to_s 36}

hash = {
    a: arr.find_index('a')+1,
    e: arr.find_index('e')+1,
    i: arr.find_index('i')+1,
    o: arr.find_index('o')+1,
    u: arr.find_index('u')+1
}

puts hash
