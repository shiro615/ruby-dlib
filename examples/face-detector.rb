require 'dlib'
require 'pathname'

image_file = ARGV[0]
image = DLIB::Image.new(Pathname(image_file))
detector = DLIB::Detector.new

rectangles = detector.detect(image)

rectangles.each do |rectangle|
  image.draw_rectangle(rectangle, 0, 0, 255)
end

image.save_jpeg('output.jpg')
