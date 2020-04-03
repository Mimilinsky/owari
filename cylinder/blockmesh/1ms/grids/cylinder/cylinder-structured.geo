// Gmsh project created on Wed Mar 11 15:39:22 2020
Point(1) = { 1.000000, 1.000000, 0.0000000, 0.02};
Point(2) = { 1.000000, -1.000000, 0.0000000, 0.02};
Point(3) = { -1.000000, -1.000000, 0.0000000, 0.02};
Point(4) = { -1.000000, 1.000000, 0.0000000, 0.02};
Point(5) = { 0.000000, 0.000000, 0.0000000, 0.02};

Point(6) = { 0.5000000, 0.5000000, 0.0000000, 0.02};
Point(7) = { 0.500000, -0.500000, 0.0000000, 0.02};
Point(8) = { -0.500000, -0.500000, 0.0000000, 0.02};
Point(9) = { -0.500000, 0.500000, 0.0000000, 0.02};

//Define Outer circle
Circle(1) = {1, 5, 2};
Circle(2) = {2, 5, 3};
Circle(3) = {3, 5, 4};
Circle(4) = {4, 5, 1};

//Define Inner circle
Circle(5) = {6, 5, 7};
Circle(6) = {7, 5, 8};
Circle(7) = {8, 5, 9};
Circle(8) = {9, 5, 6};

 //Curve Loop(1) = {1,10,5,9} ;
 //Curve Loop(2) = {2,11,6,10} ;
 //Curve Loop(3) = {3,12,7,11} ;
 //Curve Loop(4) = {4,9,8,12} ;

Plane Surface(1) = {1};
Plane Surface(2) = {2};
Plane Surface(3) = {3};
Plane Surface(4) = {4};

/*
// Tell Gmsh how many cells you want per edge
Transfinite Curve{1,2,3,4} = 50;
Transfinite Curve{9,10,11,12} = 50;

// Tell Gmsh what the corner points are(going clockwise or counter-clockwise):
Transfinite Surface{1} = {1,2,7,6};
Transfinite Surface{1} = {2,3,8,7};
Transfinite Surface{1} = {3,4,9,8};
Transfinite Surface{1} = {9,4,1,6};

// Recombine the triangles into quads:
Recombine Surface{1};

// Havent tested this yet, but doesnt seem to hurt:
Mesh.Smoothing = 100;

// Extrued for a psudo 2D mesh :)
Extrude {0,0,0.1} {Surface{1}; Layers{1}; Recombine; }
*/

