class ServersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_server, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def set_server
    end

    def server_params
    end

end
