require 'rails_helper'

RSpec.describe "Posts", type: :request do

  describe "GET /post" do
    before { get '/post' }
    it "should return OK" do
      payload = JSON.parse(response.body)
      expect(payload).to be_empty
      expect(response).to have_http_status(200)
    end
  end

  describe "with data in the DB" do 
    before { get '/post'}
    let(:post) {create(:post)}
    it "should return all the published posts" do 
      get "/post/#{post.id}"
      payload = JSON.parse(response.body)
      expect(payload["id"]).to eq(post.id)
      expect(response).to have_http_status(200)
    end
  end

  describe "should return one post" do

  end

end