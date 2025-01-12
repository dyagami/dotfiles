const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0b0c0c", /* black   */
  [1] = "#5A3C85", /* red     */
  [2] = "#72648E", /* green   */
  [3] = "#8F7389", /* yellow  */
  [4] = "#9571A4", /* blue    */
  [5] = "#9F7CC3", /* magenta */
  [6] = "#80899E", /* cyan    */
  [7] = "#c2c2c2", /* white   */

  /* 8 bright colors */
  [8]  = "#566a6a",  /* black   */
  [9]  = "#5A3C85",  /* red     */
  [10] = "#72648E", /* green   */
  [11] = "#8F7389", /* yellow  */
  [12] = "#9571A4", /* blue    */
  [13] = "#9F7CC3", /* magenta */
  [14] = "#80899E", /* cyan    */
  [15] = "#c2c2c2", /* white   */

  /* special colors */
  [256] = "#0b0c0c", /* background */
  [257] = "#c2c2c2", /* foreground */
  [258] = "#c2c2c2",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
