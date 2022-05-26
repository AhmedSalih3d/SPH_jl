
module geometry
    include("math_vectors.jl")
    using .math_vectors
    export draw_line

    function draw_line(v::Vec,w::Vec,dx::Number)
        l = ℕ(w-v)

        n = trunc(Int,l/dx)

        grad = (w-v)/l

        res  = Vector{typeof(grad)}(undef,n+2)
        res[1] = v; res[end] = w;
        
        for i = 2:(n+1)
            res[i] = v + grad*(dx*i)
        end

        return res
    end
end