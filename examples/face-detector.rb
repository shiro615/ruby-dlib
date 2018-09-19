require 'dlib'
require 'pathname'

image_file = ARGV[0]
image = DLIB::Image.new(Pathname(image_file))
detector = DLIB::Detector.new

rectangles = detector.detect(image)

rectangles.each do |rectangle|
  image.draw_rectangle(rectangle, 0, 0, 255)
end

image_window = DLIB::ImageWindow.new
image_window.clear_overlay
image_window.set_image(image)
image_window.wait_until_closed
