# [2,7,11,15] 9 0,1
def two_sum(nums, target)
   hash = {}
   nums.each_with_index do |num, i|
     complement = target - num
     if  hash.values.include? complement
       return i, hash.key(complement)
     end

     hash[i] = num
   end
end
