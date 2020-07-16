artists = [
  { name: 'Radiohead', play_count: 156 },
  { name: 'Kishore Kumar', play_count: 141 },
  { name: 'The Black Keys', play_count: 35 },
  { name: 'Neutral Milk Hotel', play_count: 94 },
  { name: 'Beck', play_count: 88 },
  { name: 'The Strokes', play_count: 61 },
  { name: 'Wilco', play_count: 111 }
]

def min_played(artists)
  min = artists[0][:play_count]
  min_index = 0

  artists.each_with_index do |artist, index|

    if artist[:play_count] < min
      min = artist[:play_count]
      min_index = index
    end
  end

  min_index
end

def selection_sort(artists)
  sorted = []

  artists.length.times do
    min_index = min_played(artists)
    sorted.append(artists.delete_at(min_index))
  end

  sorted
end

def print_table(arr_of_hashs)
  puts "---------------------"
  puts "Artist | Played Count"
  puts "---------------------"

  arr_of_hashs.each do |artist|
    puts "#{artist[:name]} | #{artist[:play_count]}"
  end

  puts "---------------------"
end

puts "The unsorted list:"
print_table(artists)

puts ""
puts ""
puts ""
puts "The sorted list:"
print_table(selection_sort(artists))
