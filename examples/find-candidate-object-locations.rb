require 'dlib'
require 'pathname'

image_file = ARGV[0]
image = Dlib::Image.new(Pathname(image_file))

rectangles = image.find_candidate_object_locations(500, 50)
rectangles.each do |rectangle|
  image.draw_rectangle(rectangle, 0, 0, 255)
end

image_window = Dlib::ImageWindow.new
image_window.clear_overlay
image_window.set_image(image)
image_window.wait_until_closed
