class Word
  def vowels_count(phrase)
    phrase = I18n.transliterate(phrase)
    vogais = ['a', 'e', 'i', 'o', 'u', 'y', 'A', 'E', 'I', 'O', 'U', 'Y']
    contador = 0
    i = 0
    
    while i < phrase.length
      if vogais.include?(phrase[i])
        contador += 1
      end
      i += 1
    end 
    contador
  end

  def consonants_count(phrase)
    phrase = phrase.downcase
    phrase.count('a-z', '^aeiouy')
  end
end 


# outra opção de solução 

class Word
  def vowels_count(phrase)
    phrase = I18n.transliterate(phrase)
    phrase = phrase.downcase
    phrase.count('a-z', 'aeiouy')
  end

  def consonants_count(phrase)
    phrase = phrase.downcase
    phrase.count('a-z', '^aeiouy')
  end
end 