def two_times_implicit
    return "No block" unless block_given?
    yield
    yield
end


puts two_times_implicit
puts two_times_implicit {puts "Hello"}
