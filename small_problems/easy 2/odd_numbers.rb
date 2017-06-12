puts (1..100).select {|x| x.odd?}

# another way...

1.upto(99) {|x| puts x if x % 2 == 1}