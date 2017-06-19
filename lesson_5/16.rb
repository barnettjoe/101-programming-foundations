HEX_NUMS = ('0'..'9').to_a + ('a'..'f').to_a
HYPHEN_IDX = [8, 13, 18, 23]

def UUID_gen
  uuid = ''
  32.times { uuid << HEX_NUMS[rand(16)] }
  HYPHEN_IDX.each { |pos| uuid.insert(pos, '-') }
  puts uuid
end

UUID_gen()
