def caesar_cipher(text, shift=1)
  text.chars.map do |char|
    case char
    when 'A'..'Z'
      (char.ord + shift > 90 ? char.ord + shift - 26 : char.ord + shift).chr
    when 'a'..'z'
      (char.ord + shift > 122 ? char.ord + shift - 26 : char.ord + shift).chr
    else
      char
    end
  end.join
end

def caesar_cipher_v2(text, shift=1)
  alphabet = Array('a'..'z')
  non_caps = Hash[alphabet.zip(alphabet.rotate(shift))]

  alphabet = Array('A'..'Z')
  caps = Hash[alphabet.zip(alphabet.rotate(shift))]

  encrypter = non_caps.merge(caps)

  text.chars.map {|char| encrypter.fetch(char, char)}.join
end