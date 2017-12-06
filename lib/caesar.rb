def caesar_encode(phrase, offset)
al= [*('a'..'z')]
cphrase = phrase.split("")
  cphrase.map.with_index do |letter, index|
    al.each_with_index do |letter2, index2|
      if letter =~ (/[A-Z]/)
        if letter.downcase == letter2
          cphrase[index] = al[(index2+offset)%26].upcase
        end
        else
          if letter == letter2
          cphrase[index] = al[(index2+offset)%26]
          end
      end
    end
  end   
   return cc_done = cphrase.join
end