IncrementalSearch
=================

Simple incremental search UI kit for JavaScript (and TypeScript).

[![Build Status](https://travis-ci.org/otiai10/IncrementalSearch.svg?branch=master)](https://travis-ci.org/otiai10/IncrementalSearch)

Usage
=======

For static list

```javascript
var input = new IncSearch.TextInput({id:"foo"});
input.StaticList([
  {val:"Ritsu",img:"ritsu.png"},
  {val:"Mio",  img:"mio.png", exp:/mio/i}
]);
```

For dynamic search

```javascript
var input = new IncSearch.TextInput({id:"foo"});
input.ForInput(function(val, suggest){
  suggest([
    {val:"Yui", img:"yui.png"},
    {val:"Ui",  img:"ui.png"}
  ]);
});
```
