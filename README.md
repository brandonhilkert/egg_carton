Egg Carton Gem
=======================

Egg Carton is a series of Ruby number helpers to help with reporting conversions and click-throughs.

Don't put all your eggs in one basket...

Usage
-----

`gem install egg_carton`


Helpers
-------

The helper methods use a pre-calculate numberator and denominator with the goal of calculating an average or conversion. 
In many cases, counts are pulled from a database and then need to be displayed properly for reporting. These methods help with 
the display portion once the values have been calculated.

In Rails, helper methods are added to `ActionView::Base`, and as a result, available to views.

__Average Method__

`average(1, 4)`

`# => 0.25`

`average(1, 4, 1)`

`# => 0.3`

__Conversion Method__

`conversion(1, 4, 2)`

`# => "25%"`

`conversion(1, 4, 2, :percentage => false)`

`# => 0.25`

`conversion(1, 4, 1)`

`# => "30%"`

`conversion(1, 4, 1, :percentage => false)`

`# => 0.3`
  
Released under the [MIT license](http://www.opensource.org/licenses/mit-license.php).

