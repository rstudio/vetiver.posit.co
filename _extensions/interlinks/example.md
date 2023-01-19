---
title: "Interlinks Example"
keep-md: true
#filters:
#  - interlinks.py
interlinks:
  sources:
    siuba:
      url: https://siuba.org/
      inv: null 
      fallback: objects_siuba.json
    vetiver:
      url: https://vetiver.rstudio.com/
      inv: null
      fallback: objects_vetiver.json
---



## Heading {#sec-hello}

## Testing


* header
* line block
* para
* plain
* citation
* emphasis / strong
* smallcaps
* 


* :ref:`some explanation <vetiver.SKLearnHandler>`
* :ref:`vetiver.SKLearnHandler`

a :ref:`vetiver.SKLearnHandler` b c

*:ref:`vetiver.SKLearnHandler`*

[some explanation](`quartodoc.get_object`)

`term`{.ref}
