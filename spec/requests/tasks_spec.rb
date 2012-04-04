require 'spec_helper'

describe "Tasks" do
  describe "GET /tasks" do
    it "display some tasks" do
      @task = Task.create :task => 'go to bed'
      visit tasks_path
      page.should have_content 'go to bed'
  end
  it "creates a new task" do
    visit tasks_path
    fill_in "Task", :with => 'go to work'
    click_button 'Create Taks'

     current_path.should == tasks_path
     page.should have_content 'go to work'
    save_and_open_page
end
