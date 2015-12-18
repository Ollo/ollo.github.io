title: how to hide and show text with jquery
tags:
  - jquery
  - web development
id: 781
categories:
  - Uncategorized
date: 2011-05-27 05:46:39
---

Developing online stores while attempting to optimize for conversion is a breeding ground for invention and progression. One issue several store owners are guilty of is over loading their shopping cart with walls of text regarding policies, shipping rules, and (hopefully) clear contact information. While this is all relevant information, visual appeal is the key to converting visitors into customers. One solution I have developed is a simple ‘show/hide’ script written in jQuery that provides a header sentence that is hidden until clicked upon expanding your policy information. Use this to clean up your latest shopping cart enhancements and enjoy the benefit of reduced cart abandonment. <!--more-->

    &lt;style type="text/css"&gt;
    .msg_wrap {
      margin: 2em;
    } 
    .msg_body {
      display: none;
      padding: 1em 0;
    }
    &lt;/style&gt;

    &lt;script type="text/javascript"&gt;
    $(document).ready(function() {
        $('.msg_toggle').click(function(e) {
            e.preventDefault();
            $(this).next('.msg_body').slideToggle();
        });
    });
    &lt;/script&gt; 

    &lt;div class="msg_wrap"&gt;
      &lt;a href="#" class="msg_toggle"&gt; (click to read more) &lt;/a&gt;
      &lt;div class="msg_body"&gt;
          I'm text that is hidden until the header is is clicked.
      &lt;/div&gt;
    &lt;/div&gt;

See the Pen [kpgFD](http://codepen.io/Ollo/pen/kpgFD) by Joshua  ([@Ollo](http://codepen.io/Ollo)) on [CodePen](http://codepen.io).

<script async src="//codepen.io/assets/embed/ei.js"></script>

I myself use this implementation frequently if information is needed in the cart but space is limited. A word of caution; do not to let this idea enable over saturation of content and information. Customers want the basic information and quick shout-outs on topics like returns, warranties, and contact information. Links to these pages such as Policy and Shipping can give your customers the choice of reading your agreements or ignoring them to keep checking out. You do not want to freak a customer out by providing a ridiculous amount of information and policy that may in turn cause them to shop elsewhere like Amazon or Overstock. Just my two cents here, but this has been a proven tactic to help drive sales for store owners.