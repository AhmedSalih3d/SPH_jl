module math_vectors

    export Vec, ⋅, ℕ², ℕ

    struct Vec{Ti <: Number, Tj <: Number, Tk <: Number}
        i::Ti
        j::Tj
        k::Tk
    end
    
    # Overloading

        # Vectorial
        function Base.:+(self::Vec, other::Vec)
            return Vec(self.i+other.i,self.j+other.j,self.k+other.k)
        end

        function Base.:-(self::Vec, other::Vec)
            return Vec(self.i-other.i,self.j-other.j,self.k-other.k)
        end

        function Base.:/(self::Vec, other::Vec)
            return Vec(self.i/other.i,self.j/other.j,self.k/other.k)
        end

        function Base.:*(self::Vec, other::Vec)
            return Vec(self.i*other.i,self.j*other.j,self.k*other.k)
        end

        # Scalars
        function Base.:+(self::Vec, scalar::Number)
            return Vec(self.i+scalar,self.j+scalar,self.k+scalar)
        end

        function Base.:-(self::Vec, scalar::Number)
            return Vec(self.i-scalar,self.j-scalar,self.k-scalar)
        end

        function Base.:/(self::Vec, scalar::Number)
            return Vec(self.i/scalar,self.j/scalar,self.k/scalar)
        end

        function Base.:*(self::Vec, scalar::Number)
            return Vec(self.i*scalar,self.j*scalar,self.k*scalar)
        end


    # Vector Functions
    function ⋅(self::Vec, other::Vec)
        return self.i+other.i+self.j+other.j+self.k+other.k
    end

    function ℕ²(self::Vec)
        return self.i*self.i+self.j*self.j+self.k+self.k
    end

    function ℕ(self::Vec)
        return sqrt(ℕ²(self))
    end

end