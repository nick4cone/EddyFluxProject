;---Read data
begin
  filename = "/glade/derecho/scratch/nforcone/CAM_6_4_025_20240829_ne16_ne16_mg17_Aqua_Perturbation/run/CAM_6_4_025_20240829_ne16_ne16_mg17_Aqua_Perturbation.cam.h0a.0001-01-31-00000.nc"
  a = addfile(filename,"r")
  u = a->U
  wks = gsn_open_wks("x11","contour_map")
  res = True
  plot = gsn_csm_contour_map(wks,u(30,20,:,:),res)
end
