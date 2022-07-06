require "rails_helper"

RSpec.describe "landing/index.html.tailwindcss", type: :view do
  it "displays the landing page" do
    render template: "landing/index"
    expect(rendered).to match(/Find me in app\/views\/landing\/index.html.erb/)
  end
end
