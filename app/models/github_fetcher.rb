class GithubFetcher
  attr_reader :client

  def initialize(github)
    @github = github
    @client = Octokit::Client.new do |config|
      config.github_access_token = Rails.application.secrets.github_access_token
    end
  end

  def github_repos
    @client.repositories('maclark999')
  end
end
