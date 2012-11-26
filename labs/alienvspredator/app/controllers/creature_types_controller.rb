class CreatureTypesController < ApplicationController
  def index
    @creature_types = CreatureType.all
  end
  def create
    name = params[:name]
    @ct = CreatureType.create(:name => name)
  end
end
