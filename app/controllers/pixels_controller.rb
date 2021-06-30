class PixelsController < ApplicationController

  require 'color_converter'

  def home
  end

  def initialize_breed
    color_a = ColorConverter.rgb(params[:pixel][:color_a])
    color_b = ColorConverter.rgb(params[:pixel][:color_b])

    [color_a, color_b].each do |color|
      Pixel.create(r: color[0], g: color[1], b: color[2])
    end

    redirect_to breed_path(population: params[:pixel][:max_pop])
  end

  def breed
    loop do
      @pixels = Pixel.all
      break if @pixels.count == params[:population].to_i
      parents = @pixels.sample(2)

      Pixel.create(r: parents.sample.r, g: parents.sample.g, b: parents.sample.b)
    end

    @all_pixels = Pixel.all
  end

  def reset
    Pixel.destroy_all
    redirect_to root_path
  end

end
