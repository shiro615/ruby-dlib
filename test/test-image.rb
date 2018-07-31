class TestImage < Test::Unit::TestCase
  include Helper::Fixture

  def test_read
    assert_nothing_raised do
      DLIB::Image.new(fixture_path("sample.jpg"))
    end
  end
end
