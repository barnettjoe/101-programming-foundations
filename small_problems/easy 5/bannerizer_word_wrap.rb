words = "For a long time I used to go to bed early. Sometimes, when I had put out my candle, my eyes would close so quickly that I had not even time to say “I’m going to sleep.” And half an hour later the thought that it was time to go to sleep would awaken me; I would try to put away the book which, I imagined, was still in my hands, and to blow out the light; I had been thinking all the time, while I was asleep, of what I had just been reading, but my thoughts had run into a channel of their own, until I myself seemed actually to have become the subject of my book: a church, a quartet, the rivalry between François I and Charles V. This impression would persist for some moments after I was awake; it did not disturb my mind, but it lay like scales upon my eyes and prevented them from registering the fact that the candle was no longer burning. Then it would begin to seem unintelligible, as the thoughts of a former existence must be to a reincarnate spirit; the subject of my book would separate itself from me, leaving me free to choose whether I would form part of it or no; and at the same time my sight would return and I would be astonished to find myself in a state of darkness, pleasant and restful enough for the eyes, and even more, perhaps, for my mind, to which it appeared incomprehensible, without a cause, a matter dark indeed."

WIDTH = 80

def tidy_lines(text)
  lines = []  
  words = text.split
  line_num = 0
  loop do
    lines << []
    while lines[line_num].join(' ').size < WIDTH && words.size > 0
      lines[line_num] << words.shift
    end
    words.unshift(lines[line_num].pop) unless lines[line_num].join(' ').size < WIDTH
    line_num += 1
    break if words == []
  end
  lines
end

def print_in_box(array_of_line_arrays)
  horizontal = '+' + '-' * (WIDTH + 2) + '+'
  vertical = '|' + ' ' * (WIDTH + 2) + '|'
  puts horizontal
  puts vertical
  array_of_line_arrays.each do |line_array|
    puts "| #{line_array.join(' ').center(WIDTH)} |"
  end
  puts vertical
  puts horizontal
end

print_in_box(tidy_lines(words)) 