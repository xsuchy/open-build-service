require File.dirname(__FILE__) + '/../test_helper'

class ApplicationControllerTest < ActionController::IntegrationTest

  def setup
  end

  def test_elide
    d = "don't shorten"
    assert_equal(d, elide(d, d.length))

    t = "Rocking the openSUSE Build Service"
    assert_equal("...openSUSE Build Service", elide(t, 25, :left))
    assert_equal("R...", elide(t, 4, :right))
    assert_equal("...", elide(t, 3, :right))
    assert_equal("...", elide(t, 2, :right))
    assert_equal("Rocking t... Service", elide(t))
    assert_equal("Rock...ice", elide(t, 10))
    assert_equal("Rock...vice", elide(t, 11))
    assert_equal("Rocking...", elide(t, 10, :right))
  end

end
