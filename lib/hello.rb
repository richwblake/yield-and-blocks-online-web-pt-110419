def hello_t( arr )
  if block_given?
    count = 0
  
    while count < arr.length do
      yield arr[count]
      count += 1
    end
   arr
  else
   puts "Hey! No block was given!"
 end
end

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end

# call your method here!

