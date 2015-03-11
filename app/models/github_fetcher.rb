class GithubFetcher
  attr_reader :client

  def initialize(github)
    @github = github
    @client = Octokit::Client.new(:access_token => Rails.application.secrets.access_token)
  end

  def github_repos
    @client.repositories(@github)
  end

  def location
    @client.user(@github).location
  end
end
