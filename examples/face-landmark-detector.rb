require 'dlib'
require 'pathname'

image_file = ARGV[0]
shape_predictor_file = ARGV[1]
shape_predictor = DLIB::ShapePredictor.new(shape_predictor_file)
image = DLIB::Image.new(Pathname(image_file))
detector = DLIB::Detector.new

rectangles = detector.detect(image)
shapes = []
rectangles.each do |rectangle|
  shape = shape_predictor.detect(image, rectangle)
  puts "number of parts: #{shape.n_parts}"
  shapes.push(shape)
end

image_window = DLIB::ImageWindow.new
image_window.clear_overlay
image_window.set_image(image)
image_window.add_overlay(DLIB::OverlayLine.render_face_detections(shapes))
image_window.wait_until_closed
