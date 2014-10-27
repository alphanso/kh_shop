class Address < ActiveRecord::Base
  module Factories
    GEO = RGeo::Geographic.simple_mercator_factory
    PROJECTED = GEO.projection_factory
  end

  set_rgeo_factory_for_column(:location, Factories::PROJECTED)
  belongs_to :store
end
