# Layout
## The Grid, Inline Blocks, and REMs

We use a unit called a [*rem*][2] to help us establish a grid, which can then also be used to establish typographical rhythm. A `rem` is a universal unit of measure for the page, equivalent to the font size of the root `html` element. Put another way, we can set the size of the grid elements by setting the font size of the `html` element. So if we want a grid of nine-by-nine pixel squares, we simply set the font size of the `html` element to `9px`. Everywhere else, we can simply use `rem` units, which will always be nine pixels.

[2]:http://snook.ca/archives/html_and_css/font-size-with-rem

So long as we use whole number `rem` units everywhere, we're pretty much guaranteed to stay "on the grid." The only exception to this is margins and padding, which can be fractional, so long as the left-right and top-bottom pairs sum to one. For example, we might have left and right padding of `0.5rem`, which works, because they sum to one.

## Inline Blocks

We also use inline blocks, instead of floats, to place elements in a row on a grid. To force something to the next row, we need only give it enough width. Since we're using the box model for calculating sizes (which is CSS-speak for "they fixed a bad design and now widths and heights are what you'd naturally expect them to be"), we just need to make sure the widths of the elements on each row sum to 100%. Or somewhat to close that, anyway.

## Previous Approaches

There are a variety of more convoluted approaches to solving the grid problem. The availability of `rem` units simplified things a great deal, but `rem` units are not supported on older browsers. Inline blocks have a similar problem. [I don't care about this][2], so we can use `rem` units and inline blocks. In other cases, I think designers have simply tried to do too much. Pixel-perfect designs often come at the expense of larger concerns, like simplicity.

[2]:./A1-older-browsers

## Mixins

Verse provides a `cell` mixin, which embues an element with both inline block and gutter properties (basically, left padding to separate it from the next cell, if necessary). You may simply provide the `width` property for the element. One nice thing about this approach is there is no need for containers and your designs are more naturally mobile-friendly, since they just wrap if the width of a cell is too large for the screen.

## HTML5 Tags

Verse tries to provides some useful defaults using HTML5 tags to structure your page. We assume that your page basically is set up like this:

    body
      header
      main
      aside
      footer

(Yes, `header`, `main`, `aside`, and `footer` are all HTML5 tags.)

The `main` tag house the page's main content. The `aside` tag is for a sidebar. This indicates that this is secondary content relative to the page. Within the `main` and `aside` tags, it's expected that you will have one or more `article` tags, each wrapping self-contained blocks of content. Within each `article`, you may have more `aside` tags, indicating secondary content relative to the article (content block).

### About The `section` Tag

Verse doesn't really make use of the `section` tag, which is, in theory, supposed to break up `article` content more explicitly than is done with typical heading tags (ex: `h1` or `h2`). However, Verse doesn't prevent you from using it, either, and adding your own CSS.

### Headings Are Relative

Verse assumes headings are relative to their containing elements. A page might thus have several `h1` tags: one for the page title, one for the `main article` title, and one for the `aside article` title. These are sized differently, however, since they have different relative importance. The basic idea is that, relative to it's containing article, the title is the first-level heading. This is particularly important for repurposing content, since you don't want to have to change the headings of a block of content because it appeared in the sidebar instead of the main content area.