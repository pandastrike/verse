# Why I Don't Care About Older Browsers

At this point, it seems to me that about a third of the CSS that's out there in the wild is devoted to supporting older browsers. What's more, there are a lot of awesome things that we either can't use or have to provide fallbacks for because they aren't supported in *older browsers*.

I reject this notion absolutely.

First, let's be clear. By *older browsers* what we're usually talking about is Microsoft browsers. Microsoft is the same company that gave us IE6 and now, because they failed to get people to upgrade, we're supposedly stuck with IE8. Microsoft has been making their problems our problems almost since the Web began, and I'm over it. **Upgrading their userbase is not my problem** and I refuse to make it mine.

While we're being bold, the fact is that if all developers had this mindset, Microsoft would be forced to fix its own mess. Instead, developers are far too eager to embrace insane complications because it makes them more valuable. I'm reminded of JavaScript developers telling me I couldn't use `try/catch` because they weren't supported in Netscape Navigator 4. I'd rather create value based on building things, than on arcane reasons to discourage people from building things, but whatever. Instead of bowing to clients who don't understand technology (that's why they hire us), our job is to say, no, you're shooting yourself in foot because we're going to end up paying a tax to Microsoft instead of delivering value to our users.

Because all it takes to upgrade people is a link. **If you want to use our application, please [click here][chrome]. Or [here][firefox].** There. Was that so hard? If people aren't willing to do that much, they must not want to use your application all that badly. And we're only talking about [a third of the market][share] as of this writing (much less, if we're talking just about early adopters and/or mobile). What about corporate IT? Same thing. Get yourselves organized and tell your ops people to get people off IE8 already because they're costing the organization a lot of money in developer productivity. Either that, or just leave and go somewhere sane.

But there's another reason not to care about *older browsers*. If you're building something now, chances are the prime of it's life will be six months down the road. Maybe even longer than that. Generally, the marketshare of older browsers declines steadily. For some reason, IE8 is *going up*&mdash;thank you, once again, Microsoft&mdash;but hopefully that's just a temporary blip. Anyway, the point is to keep in mind that you're actually building applications (or Web sites or whatever) for *six months* down the road, and you're going to be living with that code even longer than that.

One last point. There's a bit of tendency for people to play the role of the Reasonable Developer when talking about browsers, and, especially when talking about Microsoft. This is a particularly noxious passive-aggressive tactic, intended to reframe an opposing argument as too extreme. That's all it is. 

The fact is, Microsoft has always gone their own way with respect to browser standards. Ninety percent of the problems with compatibility have been Microsoft on one side and everyone else on the other. And we're supposed to believe that being stuck with IE8, which was released over **four years ago**&mdash;to put that in perspective, that was before there was an iPad or a public release of Node.js&mdash;is reasonable? 

It's not, especially not at a time where there has been unprecendented innovation in Web standards and technologies. Somehow, everyone else got their act together and got just about everyone upgraded. But not Microsoft. Coupled with that albatross of a browser, IE6, anyone defending Microsoft, regardless of how reasonable their rhetoric may sound, has something to sell you, and that something probably somehow depends on Microsoft. Because I can't honestly see how anyone else in their right mind would think that it was okay for one company to hamstring one of the most important technologies in history over the [entire course of it's life][blackbird]. It's not okay, it's not cool, and we should stop acting like it is.

[chrome]:https://www.google.com/intl/en/chrome/browser/
[firefox]:http://www.mozilla.org/en-US/firefox/new/
[share]:http://thenextweb.com/insider/2013/08/01/ie9-falls-below-10-market-share-firefox-hits-50-month-low-and-chrome-again-gains-the-most/
[blackbird]:http://en.wikipedia.org/wiki/Blackbird_(online_platform)

