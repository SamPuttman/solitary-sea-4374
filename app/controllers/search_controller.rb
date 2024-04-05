class SearchController < ApplicationController
  def index
    nation = params[:nation]
    per_page = 25

    response = Faraday.get("https://last-airbender-api.fly.dev/api/v1/characters?affiliation=#{nation}&perPage=#{per_page}")
    data = JSON.parse(response.body)

    @total_members = data.length
    @members = data
  end
end
