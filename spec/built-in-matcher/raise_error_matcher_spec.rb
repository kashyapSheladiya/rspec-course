=begin
  Use the raise_error matcher to specify that a block of code raises an error.
=end

RSpec.describe 'raise error matcher' do
  def some_method
    x
  end

  def argument_method(a)
    a
  end

  class CustomError < StandardError; end

  it 'can raise any error' do
    expect { some_method }.to raise_error
    # raise_error without argument is not recommendable
  end

  it 'can raise specific error' do
    expect { some_method }.to raise_error(NameError)
    expect { no_method }.to raise_error(NameError)

    expect { argument_method }.to raise_error(ArgumentError)
    expect { argument_method(10, 20) }.to raise_error(ArgumentError)

    expect { 'hello'.test }.to raise_error(NoMethodError)

    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  it 'using raise exception' do
    expect { 3 / 0 }.to raise_exception(ZeroDivisionError)
  end

  it 'can raise custom error' do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end
