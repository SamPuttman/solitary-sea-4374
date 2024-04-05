class SearchController < ApplicationController
  def index
    nation = params[:nation]

    response = Faraday.get("https://last-airbender-api.fly.dev/api/v1/characters?affiliation=#{nation}")
    data = JSON.parse(response.body)

    @total_members = data.length
    @members = data
  end
end
