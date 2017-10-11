#!/usr/bin/env ruby
require 'pry'
	class Robot
		 attr_accessor :direction
		 attr_accessor :bearing

		def setup
		   @robot = Robot.new
		end

		def orient(direction)
			@direction = direction
			allowed = [:north, :east, :south, :west]
			raise ArgumentError.new if allowed.include?(@direction) == false
		end

		def bearing
			@direction
		end


	def turn_right
		diri = {
			north: "east",
			east: "south",
			south: "west",
			west: "north",
		}	
		new = diri[@direction].to_sym
		@direction = new 
		@bearing = new
	end
	def turn_left
		dirle = {
			north: "west",
			east: "north",
			south: "east",
			west: "south",
		}	
		new = dirle[@direction].to_sym
		@direction = new 
		@bearing = new
	end

	def at(x, y)
			@x = x
			@y = y
		end

	def coordinates
		@coordinates = [@x, @y]

	end
end

		  