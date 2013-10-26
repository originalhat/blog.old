require 'spec_helper'

feature "post workflow", type: :feature do
  let(:first_title)  { "Coffee, Bacon, Business" }
  let(:first_author) { "Mr. Winning" }
  let(:first_body)   { "The candy man came and gave me some candy." }

  let(:second_title)  { "Times are Changin'" }
  let(:second_author) { "Mr. Losing" }
  let(:second_body)   { "I lost my pants today." }

  let(:admin) { FactoryGirl.create(:admin) }

  before(:each) do
    Post.create!(title: "Existing Post", author: "Peanut", body: "stuff")
    visit "/admins/sign_in"
  end

  scenario "signin, creating, viewing, editing and deleting a post" do

    # "expect to be on the sign in page"
    expect(page).to have_content "Login"

    # "should let the admin sign in"
    fill_in "admin_email",    with: admin.email
    fill_in "admin_password", with: admin.password
    click_button "Login"

    # "head to blog page"
    within(".navbar") do
      click_link "Blog"
    end

    # "expect to be on the home page (about page)"
    expect(page).to have_content "Existing Post"

    # "should NOT have the user's post on the home page"
    expect(page).to have_no_content first_title
    expect(page).to have_no_content first_author
    expect(page).to have_no_content first_body

    # "should let the user go to the 'New Post' page"
    within(".navbar") do
      # clicking on '.glyphicon-plus' wasn't working
      find("a[href='/posts/new']").click
    end

    # "should be on the 'New Post' page"
    expect(page).to have_content "A Fresh Brew..."
    expect(page).to have_content "Title"
    expect(page).to have_content "Author"
    expect(page).to have_content "Body"

    # "should NOT let the user create an invalid new post"
    fill_in "post_title",  with: ""
    fill_in "post_body",   with: ""
    click_button "Create Post"
    expect(page).to have_content "There was a problem creating that post."
    expect(page).to have_content "Title is a required field"
    expect(page).to have_content "Body is a required field"

    # "should let the user create a valid new post"
    fill_in "post_title",  with: first_title
    fill_in "post_body",   with: first_body
    click_button "Create Post"

    # "should have the user's post on the home page"
    expect(page).to have_content first_title
    expect(page).to have_content "Arnold Brown"
    expect(page).to have_content first_body

    # "head back to the blog page"
    within(".navbar") do
      click_link "Blog"
    end

    # "should let the user go to the post's page"
    click_link first_title

    # "should have the user's post on the post's page"
    expect(page).to have_content first_title
    expect(page).to have_content "Arnold Brown"
    expect(page).to have_content first_body

    # "should let the user go to edit the post page"
    click_link "Edit"

    # "should be on the edit post's page"
    expect(page).to have_content "Editing Post"
    expect(page).to have_content "Title"
    expect(page).to have_content "Author"
    expect(page).to have_content "Body"

    # "should let the user edit the post"
    fill_in "post_title",  with: second_title
    fill_in "post_body",   with: second_body
    click_button "Update Post"

    # "should have the user's post on the post's page"
    expect(page).to have_content second_title
    expect(page).to have_content "Arnold Brown"
    expect(page).to have_content second_body

    # "should let the user delete their post"
    click_link "Delete"

    # "should NOT have the user's post on the home page"
    expect(page).to have_no_content second_title
    expect(page).to have_no_content second_author
    expect(page).to have_no_content second_body
  end

  scenario "NOT signed in as an admin" do
    expect(page).to have_content "Login"

    # "should NOT let the visitor sign in"
    fill_in "admin_email",    with: "the@dude.com"
    fill_in "admin_password", with: "bowling"
    click_button "Login"

    expect(page).to have_content "Login"
  end
end