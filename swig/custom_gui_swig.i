/* -*- c++ -*- */

#define CUSTOM_GUI_API

%include "gnuradio.i"           // the common stuff

//load generated python docstrings
%include "custom_gui_swig_doc.i"

%include "std_map.i"

namespace std {
  %template(map_float_vector) map<float, vector<float> >;
};

%{
#include "custom_gui/surface_plot.h"
%}

%include "custom_gui/surface_plot.h"
GR_SWIG_BLOCK_MAGIC2(custom_gui, surface_plot);
