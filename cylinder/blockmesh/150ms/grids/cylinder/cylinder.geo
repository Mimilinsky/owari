// Gmsh project created on Wed Mar 11 15:19:30 2020
//+
Point(1) = {-0, 0, 0, 0.0002};
SetFactory("OpenCASCADE");
Circle(1) = {0.0, 0.0, 0, 0.1, 0, 2*Pi};
Circle(2) = {0.0, 0.0, 0, 0.3, 0, 2*Pi};
//+
Curve Loop(1) = {2};
//+
Curve Loop(2) = {1};
//+
Plane Surface(1) = {1, 2};
//+
Characteristic Length {1} = 0.00002;
