require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  def setup
    @blog = Blog.new(
      title: 't' * 5,
      body: 'b' * 20
    )
  end

  test 'should valid' do
    assert @blog.valid?
  end
end
