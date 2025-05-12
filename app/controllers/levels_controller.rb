class LevelsController < ApplicationController
  def index
    @levels = Level.all
    render :index
  end
  def show
    @level = Level.find_by(id: params[:id])
    render :show
  end
  def update
    @level = Level.find_by(id: params[:id])
    minutes_array = []
    x = 0
    while x < @level.runs.length

      # we are making an array of hashes where each hash has the minute, second, and millisecond data of each run. Note: run_number is the number in the array, not the id)

      minutes_array.push(run_number: x, run_minutes: @level.runs[x].minutes, run_seconds: @level.runs[x].seconds, run_milliseconds: @level.runs[x].milliseconds)
      x += 1
    end
    # sorting the array so item [0] is the fastest time
    array_sorted = minutes_array.sort_by { |hsh| [ hsh[:run_minutes], hsh[:run_seconds], hsh[:run_milliseconds] ] }
    # p array_sorted
    # p array_sorted[0][:run_minutes]
    # p array_sorted[0][:run_seconds]
    # p array_sorted[0][:run_milliseconds]
    avg_time_in_secs = 0.00
    array_sorted.length.times do |n|
      avg_time_in_secs += (60 * array_sorted[n][:run_minutes])
      p "after minutes added"
      p avg_time_in_secs
      avg_time_in_secs += (array_sorted[n][:run_minutes])
      p "after seconds added"
      p avg_time_in_secs
      avg_time_in_secs += (array_sorted[n][:run_milliseconds] / 100)
      p "after millis added"
      p avg_time_in_secs
    end
    p avg_time_in_secs
    avg_time_in_secs = avg_time_in_secs / array_sorted.length
    p avg_time_in_secs
    @level.update(
      name: @level.name,
      category: @level.category,
      fastest_time_min: array_sorted[0][:run_minutes],
      fastest_time_sec: array_sorted[0][:run_seconds],
      fastest_time_milli: array_sorted[0][:run_milliseconds]
    )
    render :show
  end
  def fastest_time
    level = Level.find_by(id: params[:id])
    minutes_array = []
    x = 0
    while x < level.runs.length

      # we are making an array of hashes where each hash has the minute, second, and millisecond data of each run. Note: run_number is the number in the array, not the id)

      minutes_array.push(run_number: x, run_minutes: level.runs[x].minutes, run_seconds: level.runs[x].seconds, run_milliseconds: level.runs[x].milliseconds)
      x += 1
    end
    # sorting the array so item [0] is the fastest time
    array_sorted = minutes_array.sort_by { |hsh| [ hsh[:run_minutes], hsh[:run_seconds], hsh[:run_milliseconds] ] }
    p array_sorted
  end
end
