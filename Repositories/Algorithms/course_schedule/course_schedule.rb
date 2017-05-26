#topological sorting
#param: integer, the total number of classes
#param: nesteed array, list the class and prerequisties
#return boolean

def is_finished(num, prerequisties) 
	#edge is the desitnation, degree is the number of indegree
	edges = Array.new(num, Array.new(num, 0))
	degrees = Array.new(num, 0)

	#update the edges and degrees base on the course number
	for i in 0...prerequisties.length
		crt_class = prerequisties[i][0]
		pre_class = prerequisties[i][1]
		degrees[crt_class] += 1
		edges[pre_class].push(crt_class)
	end

	#fill the queue with courses with no prerequisties
	queue = []
	for i in 0...degrees.length 
		if (degrees[i] == 0)
			queue.push(i)
		end
	end

	#count number of times to make all indegrees to 0
	count = 0
	while (!queue.empty?)
		course = queue.delete_at(0)
		count += 1
		n = edges[course].length
		for i in 0...n
			pointer = edges[course][i]
			degrees[pointer] -= 1
			if (degrees[pointer] == 0)
				queue.push(pointer)
			end
		end
	end
	
	return count == num

end