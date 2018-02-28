class RailwayStation
  def initialize(station_name)
    @station_name = station_name
    @trains = []
  end

  def receive_train(train)
    @trains.push(train)
  end

  def show_trains
    puts(@trains)
  end

  def show_name
    @station_name
  end

  def show_train_by_type
    cargo = 0
    passenger = 0

    @trains.each do |train|
      if train[:type] == 'cargo'
        cargo = cargo+1
      elsif train[:type] == 'passenger'
        passenger = passenger+1
      end
    end
    puts "cargo - #{cargo}"
    puts "passenger - #{passenger}"
  end

  def depart_train (train_name)
    @trains.each do |train, index|
      if train[:name] == train_name
        @trains.delete_at(index.to_i)
      end
    end
  end
end

zhmerinka = RailwayStation.new('Zhmerinka')
vinkivci = RailwayStation.new('Vinkivci')
vanna = RailwayStation.new('Vanna')
kozyatun = RailwayStation.new('Kozyatun')

zhmerinka.receive_train({name: 774, type: 'passenger'})
zhmerinka.receive_train({name: 773, type: 'cargo'})
vinkivci.receive_train({name: 74, type: 'passenger'})
vinkivci.receive_train({name: 574, type: 'cargo'})

zhmerinka.show_trains
zhmerinka.show_train_by_type

zhmerinka.depart_train(773)

zhmerinka.show_trains

class Route
  def initialize(route)
    @route = route
  end

  def add_station(station)
    @route.push(station)
  end

  def delete_station(station)
    @route.delete(station)
  end

  def puts_routes_list
    @route.each do |station|
      # puts station
      puts station.show_name
    end
  end

  def get_route
    @route
  end

end

 route1 = Route.new([zhmerinka, vinkivci])

 route1.add_station(vanna)
 route1.add_station(kozyatun)

 route1.puts_routes_list

class Train

  def initialize(type, cars_number = 0)
    @type = type
    @cars_number = cars_number
    @speed = 0
  end

  def change_speed(speed)
    @speed = speed
  end

  def current_speed
    puts @speed
  end

  def car
    puts @cars_number
  end

  def add_car
    if @speed == 0
     @cars_number = @cars_number + 1
     puts  @cars_number
    end
  end

  def delete_car
    if @speed == 0 && @cars_number > 0
      @cars_number = @cars_number - 1
      puts  @cars_number
    end
  end

  def add_route(route)
    @route = route
    puts @route
  end

 def go_to_station
    @route.each do |station|
     puts station
    end
 end
end

train1 = Train.new('passenger', 2)

 train1.change_speed(6)
 train1.current_speed
 train1.car
 train1.change_speed(0)
 train1.add_car
 train1.delete_car
 train1.add_route(route1)
