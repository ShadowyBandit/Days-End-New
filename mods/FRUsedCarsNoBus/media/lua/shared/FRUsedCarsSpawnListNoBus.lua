if VehicleZoneDistribution then -- check if the table exists for backwards compatibility

-- Trailer Parks, have a chance to spawn burnt cars, some on top of each others, it's like a pile of junk cars
VehicleZoneDistribution.trailerpark.vehicles["Base.schoolbus"] = nil;
VehicleZoneDistribution.trailerpark.vehicles["Base.schoolbusshort"] = nil;

-- bad vehicles, moslty used in poor area, sometimes around pub etc.
VehicleZoneDistribution.bad.vehicles["Base.schoolbus"] = nil;
VehicleZoneDistribution.bad.vehicles["Base.schoolbusshort"] = nil;

-- medium vehicles, used in some of the good looking area, or in suburbs
VehicleZoneDistribution.medium.vehicles["Base.schoolbus"] = nil;
VehicleZoneDistribution.medium.vehicles["Base.schoolbusshort"] = nil;

-- junkyard, spawn damaged & burnt vehicles, less chance of finding keys but more cars.
-- also used for the random car crash.
VehicleZoneDistribution.junkyard.vehicles["Base.schoolbus"] = nil;
VehicleZoneDistribution.junkyard.vehicles["Base.schoolbusshort"] = nil;

-- traffic jam, mostly burnt car & damaged ones.
-- Used either for hard coded big traffic jam or smaller random ones.
VehicleZoneDistribution.trafficjamw.vehicles["Base.schoolbus"] = nil;
VehicleZoneDistribution.trafficjamw.vehicles["Base.schoolbusshort"] = nil;

end