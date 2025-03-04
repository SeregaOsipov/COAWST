%
% ROMS Grid File
% ==============
%
% These functions are used for preparing ROMS Grid NetCDF file.
%
%   add_coords        - Adds horizontal (Cartesian or spherical) coordinates
%                          to a NetCDF file.
%
%   add_mask          - Adds generic land/maks to a non ROMS NetCDF file.
%
%   add_masks         - Adds ROMS land/sea mask arrays to a NetCDF file.
%
%   add_sponge        - Adds enhanced viscosity and diffusion scaling
%                         variables (visc_factor and diff_factor) to an
%                         existing ROMS Grid NetCDF file.
%
%   cartesian_grid    - Given a larger donor grid, this function estracts
%                         a rotated Cartesian grid centered at provided
%                         coordinates and rotated by specified angle.
%
%   check_nest_masks  - Checks land/sea masks in nesting contact regions.
%                         In particular, it can be used to examine the
%                         nesting grids connectivity when there are land/sea
%                         mask features in the contact regions. A plotting
%                         section is provided as a guideline. Users may need
%                         to adapt it for their particular application. 
%
%   c_grid            - Creates ROMS Grid NetCDF file.
%
%   flip_grid         - Given a ROMS Grid NetCDF file, it creates a new
%                         Grid NetCDF file with flipped dimensions, 
%                         coordinates, and variables.
%
%   grid_extract      - Extracts a ROMS subdomain Grid NetCDF file for
%                         a larger input grid.
%
%   grid_rotated      - Given a larger Grid NetCDF file, this function
%                         extracts and creates a rotated subdomain
%                         (Cartesian or Spherical) Grid NetCDF file
%                         centered at provided coordinate and rotated by
%                         specified angle. 
%
%   grids_structure   - Compute a nested grids structure array, say G(:),
%                         containing all the grid variables associated
%                         with the application's horizontal and vertical
%                         grids.
%
%   get_roms_grid     - Builds or updates a ROMS grid structure for
%                         a particular ROMS application.
%
%   roms_metrics      - Robust function to computes the several ROMS grid
%                         metrics from the (lon,lat) coordinates.
%
%   spherical_grid    - Given a larger donor grid, this function
%                       extracts a rotated Spherical grid centered at
%                       provided coordinates and rotated by specified
%                       angle. 
%
%   uniform_grid      - Sets a ROMS Cartesian grid uniform coordinates and
%                         metrics.
%
% Nested Grids:
%
%   c_contact         - Creates ROMS nesting Contact Points NetCDF file.
%
%   check_refine      - Checks a ROMS nested refinement grid structure.
%
%   coarse2fine       - Given a coarse resolution ROMS grid NetCDF file,
%                         it creates a finer resolution grid in the
%                         specified region.
%
%   contact           - Sets Contact Points between ROMS nested grids for
%                         each overlaping contact region.
%
%   disp_contact      - Displays Nested Grids Contact Points unique values.
%
%   fine2coarse       - Given a fine resolution ROMS grid NetCDF file,
%                         it creates a coarser resolution grid in the
%                         specified region.
%
%   grid_connections  - Appends the nested grids conectivity fields between
%                         donor and receiver grids for each contact region
%                         to the Nested Grids Structure.
%
%   grid_perimeter    - Creates a structure containing information about
%                         nested grids perimeters, boundary edges, and
%                         other parameters.
%
%   plot_contact      - Plots various ROMS Nested Grids Contact Points
%                         figures.
%
%   qc_interp         - Quadratic conservative interpolation for ROMS
%                         refinement.
%
%   refine_gridvar    - Computes requested refined variable from ROMS
%                        coarse grid using quadratic conservative
%                        interpolation.
%
%   sponge            - Sets and writes diffusion and viscosity sponge
%                         coefficients into Grid NetCDF file.
%
%   write_contact     - Writes out the Nested Grids Contact Point data
%                         into a NetCDF file.
%

% svn $Id: Contents.m 1156 2023-02-18 01:44:37Z arango $
%=========================================================================%
%  Copyright (c) 2002-2023 The ROMS/TOMS Group                            %
%    Licensed under a MIT/X style license                                 %
%    See License_ROMS.txt                           Hernan G. Arango      %
%=========================================================================%
