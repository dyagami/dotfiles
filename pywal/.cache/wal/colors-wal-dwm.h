static const char norm_fg[] = "#c2c2c2";
static const char norm_bg[] = "#0b0c0c";
static const char norm_border[] = "#566a6a";

static const char sel_fg[] = "#c2c2c2";
static const char sel_bg[] = "#72648E";
static const char sel_border[] = "#c2c2c2";

static const char urg_fg[] = "#c2c2c2";
static const char urg_bg[] = "#5A3C85";
static const char urg_border[] = "#5A3C85";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
