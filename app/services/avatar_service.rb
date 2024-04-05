class AvatarService
  def initialize
    @conn = Faraday.new(url: "https://last-airbender-api.fly.dev/") do |faraday|

    end
  end

  def get_members_by_nation(nation)
    formatted_nation = nation.gsub(' ', '+')
    response = @conn.get("/api/v1/characters", affiliation: formatted_nation)
    parse_response(response)
  end

  private

  def parse_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
