class BeerSong
  def verse(verse_number)
    case
    when verse_number > 2 then
      "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n" \
      "Take one down and pass it around, #{verse_number - 1} bottles of beer on the wall.\n" \

    when verse_number == 2 then
      "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n" \
      "Take one down and pass it around, #{verse_number - 1} bottle of beer on the wall.\n" \

    when verse_number == 1 then
      "#{verse_number} bottle of beer on the wall, #{verse_number} bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n" \

    when verse_number.zero? then
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n" \
    end

  end

  def verses(verse1, verse2)
    collected_verses = []
    (verse2..verse1).each do |value|
      collected_verses << verse(value)
    end
    collected_verses.reverse.join("\n")
  end

  def lyrics
    verses(99,0)
  end
end
