class Pangram
  def self.pangram?(phrase)
    check = true
    if phrase == ""
      check = false
    else
      phrase = phrase.downcase
      phrase = phrase.split('')
      ('a'..'z').each do |ch|
        if phrase.include?(ch)
          check = true
        else
          check = false
          break
        end
      end
    end
    return check
  end
end
# class Pangram
#   def self.pangram?(phrase)
#     check = true
#     if phrase == ""
#       check = false
#     else
#       phrase = phrase.downcase
#       phrase = phrase.split('')
#       ('a'..'z').each do |ch|
#         (0..phrase.length-1).each do |i|
#           if ch == phrase[i]
#             check = true
#             break
#           else
#             check = false
#           end
#         end
#         if check == false
#           break
#         end
#       end
#     end
#     return check
#   end
# end
#Pangram.pangram?("")
