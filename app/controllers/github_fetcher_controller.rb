class GithubFetcherController < ApplicationController
  def index
    @repo = GithubFetcher.new(params[:github])
    @location = @repo.find_stats
  end
end
