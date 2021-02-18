require 'test_helper'

class CourseApplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get course_applications_index_url
    assert_response :success
  end

  test "should get new" do
    get course_applications_new_url
    assert_response :success
  end

  test "should get edit" do
    get course_applications_edit_url
    assert_response :success
  end

end
