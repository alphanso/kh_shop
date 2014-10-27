class MerchantsController < ApplicationController
  before_action :authenticate_user!
end