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

two_sum([1,8,2,3,7,4], 7)
