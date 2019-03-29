# sixel-gnuplot
GNUplot with sixel support


On debian, just use these binaries (gnuplot backported from debian testing) or make your own using the attached patch or by adding to debian rules "--with-bitmap-terminals" right after --with-gd, so that debian/rules looks like:

  --with-gd --with-bitmap-terminals \

Then set GNUTERM, like:

  export GNUTERM="sixelgd size 1280,720 truecolor font arial 10"

You can mix regular images, ANSI colors and plot of function

![example2](./example2.jpg?raw=true)

This is what you can get, for example a visualization of chrony statistics.log wit the sixel-plot.sh script shown above:

![example](./example.jpg?raw=true)

It works inside GNU screen or tmux when using the proper patches:

![inside-screen](./inside-screen.jpg?raw=true)
![inside-tmux](./inside-tmux.jpg?raw=true)
