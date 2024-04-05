class SearchController < ApplicationController
  def index
    nation = params[:nation]
    per_page = 1000

    response = Faraday.get("https://last-airbender-api.fly.dev/api/v1/characters?affiliation=#{nation}&perPage=#{per_page}")
    data = JSON.parse(response.body, symbolize_names: true)

    @total_members = data.length
    @members = data.map { |member_data| Member.new(member_data) }
  end
end
