# frozen_string_literal: true
require 'minitest/autorun'
require 'minitest/pride'
require 'interactor2'

class TestInteractor2 < Minitest::Test
  class Double < Interactor2
    attr_reader :number

    def initialize(number)
      @number = number
    end

    def perform
      fail!("unable to double `#{@number}`") unless @number.respond_to? :*
      @number *= 2
    end
  end

  def test_success
    double = Double.perform(213)
    assert double.success?
    assert_equal 426, double.number
  end

  def test_fail
    double = Double.perform(:abc)
    refute double.success?
    assert_equal 'unable to double `abc`', double.error
  end
end
