// Gmsh project created on Wed Mar 11 15:39:22 2020
Point(1) = { 2.000000, 1.000000, 0.0000000, 0.1};
Point(2) = { 2.000000, -1.000000, 0.0000000, 0.1};
Point(3) = { -1.000000, -1.000000, 0.0000000, 0.1};
Point(4) = { -1.000000, 1.000000, 0.0000000, 0.1};
Point(5) = { 0.000000, 0.000000, 0.0000000, 0.02};

Point(6) = { 0.1000000, 0.1000000, 0.0000000, 0.02};
Point(7) = { 0.100000, -0.100000, 0.0000000, 0.02};
Point(8) = { -0.100000, -0.100000, 0.0000000, 0.02};
Point(9) = { -0.100000, 0.100000, 0.0000000, 0.02};

//Define Outer circle
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};

//Define Inner circle
Circle(5) = {6, 5, 7};
Circle(6) = {7, 5, 8};
Circle(7) = {8, 5, 9};
Circle(8) = {9, 5, 6};


 Line Loop(1) = {1,4,2,3} ;
 Curve Loop(2) = {5,7,8,6} ;
 Plane Surface(1) = {1, 2};

// Recombine the triangles into quads:
Recombine Surface{1};

// Havent tested this yet, but doesnt seem to hurt:
Mesh.Smoothing = 100;

// Extrued for a psudo 2D mesh :)
Extrude {0,0,0.1} {Surface{1}; Layers{1}; Recombine; }



//Define Boundary Layer3
Field[1] = BoundaryLayer;
Field[1].EdgesList = {5, 6, 7, 8};
Field[1].NodesList = {6,7, 8, 9};
//Field[1].FacesList = {232, 228};
Field[1].FanNodesList = {6,7, 8, 9};
//Field[1].FansList = {5, 6};
Field[1].hfar = 0.1;
Field[1].hwall_n = 0.001;
Field[1].thickness = 0.1;
Field[1].ratio = 1.2;
Field[1].AnisoMax = 20;
Field[1].Quads = 1;
Field[1].IntersectMetrics = 0;
BoundaryLayer Field = 1;

//+
Physical Surface("front") = {50};
//+
Physical Surface("top") = {33};
//+
Physical Surface("bottom") = {25};
//+
Physical Surface("out") = {21};
//+
Physical Surface("wall") = {41, 37, 49, 45};
//+
Physical Volume("volume") = {1};
//+
Physical Surface("in") = {29};
//+
Physical Surface("back") = {1};
