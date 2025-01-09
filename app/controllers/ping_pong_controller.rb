class PingPongController < ApplicationController
    def ping
      render json: { message: "Ping from Rails!" }
    end
  end