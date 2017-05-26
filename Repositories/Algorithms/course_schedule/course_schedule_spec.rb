require_relative "course_schedule.rb"

describe "is_finished" do
	it "takes a valid numbers of courses and list of prerequisites, and return true" do
		total_number_of_courses = 2
		courses_list = [[1, 0]]
		expect(is_finished(total_number_of_courses, courses_list)).to eq(true)
	end

	it "takes a numbers of courses and list of prerequisites which contains cycle, returns false" do
		total_number_of_courses = 2
		courses_list = [[1, 0], [0, 1]]
		expect(is_finished(total_number_of_courses, courses_list)).to eq(false)
	end
end