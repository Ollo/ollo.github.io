title: dynamic styles with sass maps
tags:
  - sass
date: 2015-12-16 10:10:37
---

So recently I was working on a series of content cards and each of them needed a unique color. Instead of writing simple classes I wanted to dynamically generate them via a sass map and a couple of simple functions.


    $card_colors: (
      'r': $blue,
      'i': $green,
      'a': $mustard,
      's': $burnt_orange,
      'e': $spray_blue,
      'c': $burnt_sienna_red
    );

    @function get-color($color_code: r) {
      @return map-get($card_colors, $color_code);
    }

    @each $background, $color_code in $card_colors {
      .code_background-#{$background} {
        background-color: get-color($background);
      }
    }
