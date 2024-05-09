// generated by Fast Light User Interface Designer (fluid) version 1.0309

#include "CubeViewUI.h"

void CubeViewUI::cb_vrot_i(Fl_Roller* o, void*) {
  cube->v_angle(((Fl_Roller *)o)->value());
cube->redraw();
}
void CubeViewUI::cb_vrot(Fl_Roller* o, void* v) {
  ((CubeViewUI*)(o->parent()->parent()->parent()->user_data()))->cb_vrot_i(o,v);
}

void CubeViewUI::cb_ypan_i(Fl_Slider* o, void*) {
  cube->pany(((Fl_Slider *)o)->value());
cube->redraw();
}
void CubeViewUI::cb_ypan(Fl_Slider* o, void* v) {
  ((CubeViewUI*)(o->parent()->parent()->parent()->user_data()))->cb_ypan_i(o,v);
}

void CubeViewUI::cb_xpan_i(Fl_Slider* o, void*) {
  cube->panx(((Fl_Slider *)o)->value());
cube->redraw();
}
void CubeViewUI::cb_xpan(Fl_Slider* o, void* v) {
  ((CubeViewUI*)(o->parent()->parent()->parent()->user_data()))->cb_xpan_i(o,v);
}

void CubeViewUI::cb_hrot_i(Fl_Roller* o, void*) {
  cube->h_angle(((Fl_Roller *)o)->value());
cube->redraw();
}
void CubeViewUI::cb_hrot(Fl_Roller* o, void* v) {
  ((CubeViewUI*)(o->parent()->parent()->parent()->user_data()))->cb_hrot_i(o,v);
}

void CubeViewUI::cb_zoom_i(Fl_Value_Slider* o, void*) {
  cube->size=((Fl_Value_Slider *)o)->value();
cube->redraw();
}
void CubeViewUI::cb_zoom(Fl_Value_Slider* o, void* v) {
  ((CubeViewUI*)(o->parent()->parent()->user_data()))->cb_zoom_i(o,v);
}

CubeViewUI::CubeViewUI() {
  { mainWindow = new Fl_Double_Window(415, 405, "CubeView");
    mainWindow->box(FL_UP_BOX);
    mainWindow->labelsize(12);
    mainWindow->user_data((void*)(this));
    { Fl_Group* o = new Fl_Group(5, 3, 374, 399);
      { VChange = new Fl_Group(5, 100, 37, 192);
        { vrot = new Fl_Roller(5, 100, 17, 186, "V Rot");
          vrot->labeltype(FL_NO_LABEL);
          vrot->labelsize(12);
          vrot->minimum(-180);
          vrot->maximum(180);
          vrot->step(1);
          vrot->callback((Fl_Callback*)cb_vrot);
          vrot->align(Fl_Align(FL_ALIGN_WRAP));
        } // Fl_Roller* vrot
        { ypan = new Fl_Slider(25, 100, 17, 186, "V Pan");
          ypan->type(4);
          ypan->selection_color(FL_DARK_BLUE);
          ypan->labeltype(FL_NO_LABEL);
          ypan->labelsize(12);
          ypan->minimum(-25);
          ypan->maximum(25);
          ypan->step(0.1);
          ypan->callback((Fl_Callback*)cb_ypan);
          ypan->align(Fl_Align(FL_ALIGN_CENTER));
        } // Fl_Slider* ypan
        VChange->end();
      } // Fl_Group* VChange
      { HChange = new Fl_Group(120, 362, 190, 40);
        { xpan = new Fl_Slider(122, 364, 186, 17, "H Pan");
          xpan->type(5);
          xpan->selection_color(FL_DARK_BLUE);
          xpan->labeltype(FL_NO_LABEL);
          xpan->labelsize(12);
          xpan->minimum(25);
          xpan->maximum(-25);
          xpan->step(0.1);
          xpan->callback((Fl_Callback*)cb_xpan);
          xpan->align(Fl_Align(FL_ALIGN_CENTER|FL_ALIGN_INSIDE));
        } // Fl_Slider* xpan
        { hrot = new Fl_Roller(122, 383, 186, 17, "H Rotation");
          hrot->type(1);
          hrot->labeltype(FL_NO_LABEL);
          hrot->labelsize(12);
          hrot->minimum(-180);
          hrot->maximum(180);
          hrot->step(1);
          hrot->callback((Fl_Callback*)cb_hrot);
          hrot->align(Fl_Align(FL_ALIGN_RIGHT));
        } // Fl_Roller* hrot
        HChange->end();
      } // Fl_Group* HChange
      { MainView = new Fl_Group(46, 27, 333, 333);
        { cframe = new Fl_Box(46, 27, 333, 333);
          cframe->box(FL_DOWN_FRAME);
          cframe->color((Fl_Color)4);
          cframe->selection_color((Fl_Color)69);
        } // Fl_Box* cframe
        { cube = new CubeView(48, 29, 329, 329, "This is the cube_view");
          cube->box(FL_NO_BOX);
          cube->color(FL_BACKGROUND_COLOR);
          cube->selection_color(FL_BACKGROUND_COLOR);
          cube->labeltype(FL_NORMAL_LABEL);
          cube->labelfont(0);
          cube->labelsize(14);
          cube->labelcolor(FL_FOREGROUND_COLOR);
          cube->align(Fl_Align(FL_ALIGN_CENTER|FL_ALIGN_INSIDE));
          cube->when(FL_WHEN_RELEASE);
          Fl_Group::current()->resizable(cube);
        } // CubeView* cube
        MainView->end();
        Fl_Group::current()->resizable(MainView);
      } // Fl_Group* MainView
      { zoom = new Fl_Value_Slider(106, 3, 227, 19, "Zoom");
        zoom->type(5);
        zoom->selection_color(FL_DARK_BLUE);
        zoom->labelfont(1);
        zoom->labelsize(12);
        zoom->minimum(1);
        zoom->maximum(50);
        zoom->step(0.1);
        zoom->value(10);
        zoom->textfont(1);
        zoom->callback((Fl_Callback*)cb_zoom);
        zoom->align(Fl_Align(FL_ALIGN_LEFT));
      } // Fl_Value_Slider* zoom
      o->end();
    } // Fl_Group* o
    mainWindow->end();
    mainWindow->resizable(mainWindow);
  } // Fl_Double_Window* mainWindow
}

void CubeViewUI::show(int argc, char **argv) {
  mainWindow->show(argc, argv);
}
