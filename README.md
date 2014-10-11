# Hexp::Kramdown

Convert a Kramdown document to Hexp.

``` ruby
doc  = Kramdown::Document.parse(source)
hexp = Hexp::Kramdown.convert(doc)
```
