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

  test 'title should be present' do
    @blog.title = ''
    assert_not @blog.valid?
  end

  test 'body should be present' do
    @blog.body = ''
    assert_not @blog.valid?
  end

  test 'title should not be too short' do
    @blog.title = 'a'
    assert_not @blog.valid?
  end

  test 'body should not be too short' do
    @blog.body = 'a'
    assert_not @blog.valid?
  end
end
