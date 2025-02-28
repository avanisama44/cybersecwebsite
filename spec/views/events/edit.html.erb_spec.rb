require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "MyString",
      :date => "MyString",
      :desc => "MyText",
      :venue => "MyText"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_date[name=?]", "event[date]"

      assert_select "textarea#event_desc[name=?]", "event[desc]"

      assert_select "textarea#event_venue[name=?]", "event[venue]"
    end
  end
end
