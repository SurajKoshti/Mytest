class Complement
  def self.of_dna(dna_strnad)
    i = 0
    rna_strand = ''
    dna_strnad = dna_strnad.split('')

    while i < dna_strnad.length do

      if dna_strnad[i] == 'A'
        rna_strand = rna_strand + 'U'

      elsif dna_strnad[i] == 'T'
        rna_strand = rna_strand + 'A'

      elsif dna_strnad[i] == 'C'
        rna_strand = rna_strand + 'G'

      elsif dna_strnad[i] == 'G'
        rna_strand = rna_strand + 'C'

      else
        rna_strand=''
        break
      end
      i = i + 1

    end
    return rna_strand

  end
end
