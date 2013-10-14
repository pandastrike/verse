# Typography
## Rhythm and Layout

Our approach to establishing [rhythm in typography][1] is tied to our approach to [establishing a grid][3]. The basic idea behind rhythm is similar to that of grid-based design, in general. Namely, that things line up on the page based on a grid. This gives the whole page a more cohesive feel.

## The Strategy

To establish rhythm, we simply make sure that the `line-height` of any block of text is a whole number of `rem` units. That is, `1rem` or `2rem` but not `1.5rem` or `2.5rem`. This ensures that the baseline of each line of text is always on grid line. Next, we specify the font size relative to the line-height, based on how much we want the text to breath. Body text tends to have a bit more space than headings.

## Rhythm Mixin

A special `rhythm` mixin (you thought I was going to say *method* there, and I wanted to, but, sadly, it's just a `mixin` in Stylus) makes it easier to do this. The first argument is the ratio of font size to line height. The higher the ratio, the less breathing room. A ratio of 1/2 would mean that half the line consists basically of whitespace. A ratio of 9/10ths, on the other hand, practically butts the letters from one line against the next. The second argument is simply the line height in rem units, ex: `2rem`.

**Example** You might set a large heading like this:

    rhythm 0.8 4rem

A smaller body font might use:

    rhythm 0.6 2rem

[1]:http://blog.8thlight.com/chris-peak/2012/12/30/vertical-rhythm.html
[3]:./03-layout