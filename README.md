# Counter

Is there a bug here?

```sh
elm-make Main.elm --output elm.js
```

Then serve it and visit `Counter.html` - in the console you can do
`app.ports.jsMsgs.send(1)` and it increments, but it should increment on load as
we do that right after the call to `fullscreen` in `Counter.html`.
