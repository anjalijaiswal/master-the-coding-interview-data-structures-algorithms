# Brute force
# def max_area(height)
#     area = 0
#     for i in 0...height.size do
#         for j in (i+1)...height.size do
#             lesser = height[i] > height[j] ? height[j] : height[i]
#             temp_area = (j - i)*lesser
#             area = temp_area > area ? temp_area : area
#         end
#     end
#     area
# end

# Optimal
