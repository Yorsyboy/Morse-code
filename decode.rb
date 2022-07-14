def decode_char(char)
    chars = {
      '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
      '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
      '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
      '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
      '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
      '--..' => 'Z'
    }
    chars.each do |key, value|
      return value if key == char
    end
  end

  def decode_word(coded_word)
    actual_word = ''
    coded_word.split.each do |value|
      char = decode_char(value)
      actual_word += char
    end
    actual_word
  
  end

  def decode(coded_sentence)
    msg = []
    coded_sentence.split('   ').each do |word|
      msg.push(decode_word(word))
    end
    msg.join(' ')
  end  

  puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...');