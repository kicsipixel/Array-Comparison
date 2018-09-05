#!/usr/bin/env ruby

AA = ARGV[0]
AE = ARGV[1]

AEfile = []
AAfile = []
diff = []

File.open(AE, "r").each_line do |line|
	AEfile.push(line)
end

File.open(AA, "r").each_line do |line|
	AAfile.push(line)
end

AAfile.map { |e|  
	m = e.slice(0,8)
	if !(AEfile.any? { |s| s.include?(m) })
		diff.push(e)
	end
}

puts diff
