# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def destroy_all
	Course.destroy_all
	Section.destroy_all
	Episode.destroy_all
end

def course_creation
	Course.create(title: "React On Rails", description: "Create a Rails App with React")
end

def section_creation
	Section.create(title: "Chapter 1", description: "Introduction to React", course_id: Course.first.id)
end

def episode_creation
	a = 1
	4.times do
		Episode.create(title: "Lesson #{a}", description: "Basics", url: "https://www.youtube.com/embed/XwJEFzsqNoY ", section_id: Section.first.id)
		a += 1
	end	
end


def perform
	destroy_all
	course_creation
	section_creation
	episode_creation
	puts('seed done :D')
end

perform