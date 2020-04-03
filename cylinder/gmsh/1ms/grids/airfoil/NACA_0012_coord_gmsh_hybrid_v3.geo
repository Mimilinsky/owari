Merge "NACA_0012_coord_gmsh_hybrid_v3.txt";
Extrude {0, 0, 0.1} {
  Surface{1}; Layers{1}; Recombine;
}
//+
Physical Surface("front") += {120};
//+
Physical Surface("back") += {1};
//+
Physical Surface("cylinder") = {119};
//+
Physical Surface("wall") = {111};
