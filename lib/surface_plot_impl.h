/* -*- c++ -*- */
/*
 * Copyright 2021 gr-custom_gui author.
 *
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifndef INCLUDED_CUSTOM_GUI_SURFACE_PLOT_IMPL_H
#define INCLUDED_CUSTOM_GUI_SURFACE_PLOT_IMPL_H

#include <custom_gui/surface_plot.h>
#include <custom_gui/surface_plot_form.h>

#include <chrono>

  namespace gr {
    namespace custom_gui {

      class surface_plot_impl : public surface_plot
        {
        private:
            QApplication *d_qApplication;
            int width, height;
            double maxz;
            int fcount;
            int fps;
            std::chrono::milliseconds oldms; 

        public:
            surface_plot_impl(int vlen,int width, int height,int gwidth,int gheight,double maxz, int fps,char *xaxis,char* yaxis, char *zaxis,QWidget *parent);
            ~surface_plot_impl();
            surface_plot_form *d_main_gui;
            int work(int noutput_items,
                      gr_vector_const_void_star &input_items,
                      gr_vector_void_star &output_items);
  #ifdef ENABLE_PYTHON
            PyObject* pyqwidget();
  #else
            void* pyqwidget();
  #endif
        };

    } /* namespace custom_gui */
  } /* namespace gr */

#endif /* INCLUDED_CUSTOM_GUI_SURFACE_PLOT_IMPL_H */

