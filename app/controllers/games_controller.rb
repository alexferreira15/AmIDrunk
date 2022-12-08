class GamesController < ApplicationController
  def index
    @games = policy_scope(Game)
  end
end

