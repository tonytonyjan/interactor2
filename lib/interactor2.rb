# frozen_string_literal: true
class Interactor2 #:nodoc:
  attr_reader :error

  def self.perform(*args)
    new(*args).tap { |interactor| catch(:fail) { interactor.perform } }
  end

  def success?
    @error.nil?
  end

  def fail!(msg)
    @error = msg
    throw :fail
  end

  def perform
    raise NotImplementedError
  end
end
