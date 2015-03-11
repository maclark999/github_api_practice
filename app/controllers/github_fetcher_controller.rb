class GithubFetcherController < ApplicationController
  def index
    @repo = GithubFetcher.new(params[:github])
    @location = @repo.location
  end
end
