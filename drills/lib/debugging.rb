def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    p "plain text is #{plaintext}"
    p "key is #{key}"
    p "cipher goes through #{key.chars.uniq} .......... /n  #{('a'...'z').to_a } and then #{(('a'...'z').to_a - key.chars)}"
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr
    end
    ciphertext_chars
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[65 - char.ord]
    end
    return plaintext_chars.join
end
  
  # Intended output:
  #
  # > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
  # > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"

encode("theswiftfoxjumpedoverthelazydog", "secretkey")
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
