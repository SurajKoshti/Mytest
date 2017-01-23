class ValueError < RuntimeError; end
class Board
  def self.neighbors(i, j, arr)
    [-1,0,1].product([-1,0,1]).count {|k,l| arr[i+k][j+l] == '*' }
  end
  def self.put_number(inp)
    board = inp.map{|x| x.split('')}
    labeled_board = board.map.with_index do |row, i|
      row.map.with_index do |cell, j|
        next cell unless cell == ' '
        bombs = neighbors(i, j, board)
        bombs == 0 ? ' ' : bombs
      end
    end
    out = labeled_board.map{|x| x.join('')}
  end

  def self.transform(inp)
    input_length = inp[0].split("").length-2
    if inp.first == inp.last
      (1..inp.length-2).each do |i|
        if inp[i].split("").length-2 != input_length
          raise ValueError
        else
          ar = inp[i].split("")
          if ar.last == "|" && ar.first == "|"
            (1..ar.length-2).each do |j|
              if not ar[j] == " " || ar[j] == "*"
                raise ValueError
              end
            end
          else
            raise ValueError
          end
          inp[i] = ar.join
        end
      end
      out = put_number( inp )
    else
      raise ValueError
    end
  end
end
