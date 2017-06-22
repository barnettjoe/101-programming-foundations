def longest_sentence(text)
  text.gsub(/\s/,' ').split(/\.|\?|\!/).sort_by(&:length).last
end

def longest_words(text)
  words_by_size = text.gsub(/\s|\W/, ' ').split.sort_by(&:size)
  words_by_size.select { |x| x.size == words_by_size.last.size }
end

def longest_paragraph(text)
  text.split(/\n\r?\n/).map { |para| para.split }.max_by(&:size).join(' ')
end


abe = "Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth."

frank_file = File.open("frank.txt", "r")
frank = frank_file.read

p longest_sentence(abe)
p longest_words(abe)
p longest_paragraph(abe)
puts
puts
p longest_sentence(frank)
p longest_words(frank)
p longest_paragraph(frank)
