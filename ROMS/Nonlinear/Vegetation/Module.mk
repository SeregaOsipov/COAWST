# svn $Id: Module.mk 429 2009-12-20 17:30:26Z arango $
#::::::::::::::::::::::::::::::::::::::::::::::::::::: Hernan G. Arango :::
# Copyright (c) 2002-2019 The ROMS/TOMS Group             Kate Hedstrom :::
#   Licensed under a MIT/X style license                                :::
#   See License_ROMS.txt                                                :::
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

local_sub  := ROMS/Nonlinear/Vegetation

local_src  := $(wildcard $(local_sub)/*.F)

sources    += $(local_src)

$(eval $(compile-rules))
