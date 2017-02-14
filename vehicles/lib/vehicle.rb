class Vehicle
    @@vehicles = []

    define_method(:initialize) do |make, model, year|
      @make = make
      @model = model
      @year = year
      @id = @@vehicles.length().+(1)
    end

    define_method(:make) do
      @make
    end

    define_method(:model) do
      @model
    end

    define_method(:year) do
      @year
    end

    define_singleton_method(:all) do
      @@vehicles
    end

    define_method(:save) do
      @@vehicles.push(self)
    end

    define_singleton_method(:clear) do
      @@vehicles = []
    end

    define_method(:age) do
      current_year = Time.new().year()
      current_year.-(@year)
    end

    define_method(:worth_buying?) do
      american_cars = ["Chrysler", "Ford", "GM"]
      american_cars.include?(@make).&(self.age().<=(15))
    end
    describe("#id") do
      it("returns the id of the vehicle") do
        test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
        test_vehicle.save()
        expect(test_vehicle.id()).to(eq(1))
      end
    end
    
    define_singleton_method(:find) do |identification|
      found_vehicle = nil
      @@vehicles.each() do |vehicle|
        if vehicle.id().eql?(identification.to_i())
          found_vehicle = vehicle
        end
      end
      found_vehicle
    end
  end
