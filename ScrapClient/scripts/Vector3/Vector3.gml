function Vector3(x, y, z) constructor {
    self.x = x;
    self.y = y;
    self.z = z;
    
    static Add = function(val) {
        return new Vector3(self.x + val.x, self.y + val.y, self.z + val.z);
    };
	
	static Sum = function(arr) {
		var nx=self.x;
		var ny=self.y;
		var nz=self.z;
		var ii=1;
		repeat(array_length(arr)-1)
		{
			nx+=arr[ii].x
			ny+=arr[ii].y
			nz+=arr[ii].z
			ii++;
		}
        return new Vector3(nx, ny, nz);
    };
    
    static Sub = function(val) {
        return new Vector3(self.x - val.x, self.y - val.y, self.z - val.z);
    };
    
    static Doot = function(val) {
        return dot_product_3d(self.x, self.y, self.z, val.x, val.y, val.z);
    };
    
    static Cross = function(val) {
        return new Vector3(self.y * val.z - val.y * self.z, self.z * val.x - val.z * self.x, self.x * val.y - val.x * self.y);
    };
    
    static Magnitude = function() {
        return point_distance_3d(0, 0, 0, self.x, self.y, self.z);
    };
    
    static Normalize = function() {
        var mag = self.Magnitude();
        return new Vector3(self.x / mag, self.y / mag, self.z / mag);
    };
}