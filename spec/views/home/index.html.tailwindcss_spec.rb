require "rails_helper"

RSpec.describe "home/index.html.tailwindcss", type: :view do
  it "displays the words Find me in app/views/home/index.html.erb" do
    render template: "home/index"
    expect(rendered).to match(/Find me in app\/views\/home\/index.html.erb/)
  end
end
