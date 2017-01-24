class Robot
   def get
     @r = [*('A'..'Z')].sample(2).join + Time.now.nsec.to_s[-3..-1]
   end
   def name
     @r = @r || get
   end
   def reset
     @r = nil
   end
end
