class GithubFetcher
  attr_reader :client

  def initialize
    @client = Octokit::Client.new(Rails.application.secrets.github_access_token)
  end
end
