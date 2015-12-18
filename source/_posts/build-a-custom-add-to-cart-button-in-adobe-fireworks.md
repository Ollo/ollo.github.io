title: Build a custom add to cart button in Adobe Fireworks
tags:
  - business
  - ecommerce
  - graphic design
date: 2011-05-30
---

![fireworks](/wp-content/uploads/fireworks.png)

When a visitor reaches your product page you have fractions of a second to try and create a conversion. One technique is to create a graphic "add to cart" button that draws the eye and provides a clear call to action on that page. I use Adobe Fireworks to build these buttons for my clients due to its flexibility to work in both raster and vector formats. Fireworks is a great tool for web graphics and smaller projects where Photoshop can seem a bit overboard. This is a method that was shown to me a long while back by a [friend](http://e-commsolution.com) that provides plenty of room for further customization and style.

<!--more-->

Setting up your Workspace and creating your base layer Start with a transparent image, I usually start with 500 x 500\. After you create your workspace create your first button layer. I consider this my "base" layer and when a duplication of a layer is needed I use this layer. A good practice is to actually name your layers so you can keep track. For this I use the vector rectangle tool and create a square about 150 px wide and 50 - 75px tall depending on what customizations I plan to add. I also add roundness to the layer, I use about 5px usually but feel free to experiment.

![base-layer](/wp-content/uploads/base-layer-1024x640.png)

Once Your base layer of the color of your choice is created and you added the desired amount of roundness we are going to duplicate this layer. To duplicate use the edit menu or cmd + D on a mac. Now that you have two copies of your base layer move the new copy higher up into the blank area away from your base layer. Now remove the fill color and add the line or stroke of a lighter color so the new layer is now just an outline. I chose gray for my edge. Now adjust the dimensions of the copy to be 2px smaller in Height and Width.

After your duplicate layer looks as above feel free to experiment with opacity and move the layer on top of your base layer. This should create a subtle edge around our button.  

Creating a Highlight layer with Auto Vector Mask Now that we have our base layer and its edge created we will create a highlight using a vector mask. To do this lets make another duplicate of our base layer and change the fill color to a lighter highlight color. I chose a light gray for this button `#CCCCCC`. After creating the duplicate change the dimension to 2 px smaller in height and width and move the layer towards to top of our workspace. Now create another large layer in the middle of our workspace that will be large enough to use to hide part of the duplicate button.

![larger-overlay](/wp-content/uploads/larger-overlay-1024x640.png)

Once these layers are created move the larger layer on top of the duplicate so the bottom half of the button copy is hidden. Now select both layers with your mouse and select from the top menu called "Modify" the "combine paths" > "Punch" option.

![punch](/wp-content/uploads/punch-1024x640.png)

Once you have done this you should only have the top piece of your button copy. We are still going to customize this new piece further so don't move it onto your base layer yet.

Select your button highlight and now use the "Commands" menu and scroll down to "Creative", then select "Auto Vector Mask". This will pop up a menu with different directions. I usually choose the direction that is a gradient from to bottom but feel free to try your own combinations.

![vector-mask](/wp-content/uploads/vector-mask-1024x640.png)

Now that we have created our highlight we can move the highlight layer onto our base layer and see how it looks. At this point we are almost finished so it start looking like a very nice button.  

Adding text and additional Styles The next step is to add the text for "Add to Cart" or any other needed verbiage depending on the project need. I build full sets for shopping carts and use the same look and feel so feel free to improvise this step. I used a simple clean font in a lighter color. I also chose to add a drop shadow to the text with a very dark gray from the default palette with the spread set to 2 and the width set to 5.  Center the text on your button and set the font size so that it looks readable and clean. Remember the point of a graphic button is to call to action so don't be too wild or they may miss your queue.

![addtocart-text](/wp-content/uploads/addtocart-text-1024x640.png)

Once the text is added and I'm pleased with the look and feel of my button I will selected all layers and flatten them to start shrinking the file for production. I also will sometimes then select the single layer and add a drop shadow to it as well so the button appears to pop off of the page a bit. Again I use small amounts of shadow so its subtle. Once the layer has a drop shadow I click on the background and in the lower layer properties panel select "fit canvas" so now only the needed space for my button is part of the image. I then save the image and its ready to go onto a site and start increasing conversion.

The final result is a clean simple add to cart button that stands out more than a default html button and has a bit more pop than a button built with simple CSS. I hope this tutorial helps you out as it has become a regular asset in my site designs.

Extra tips. Another tip I've found helpful is to add another image into the mix such as a lock icon. These can be found through sites such as [iconfinder](http://iconfinder.com) and others depending on the application. For shopping carts I add the lock to promote trust. I also sometimes incorporate part of the logo if its small enough and can fit into the button as this can solidify the branding of a site. Feel free to be creative and leave comments if you have tips or other cool ways to make these even better.
