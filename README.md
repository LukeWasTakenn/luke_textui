# luke_textui

My first project in Svelte and Typescript, really simple text drawing using NUI.

[Video Showcase](https://streamable.com/cvh0pf)


To trigger (client-side):
```lua
TriggerEvent('luke_textui:ShowUI', text, color) - Both params are string type.
```

To hide (client-side):
```lua
TriggerEvent('luke_textui:HideUI')
```

## Installing the resource
 * Download the latest release
 * Drag and drop the luke_textui folder into your resources folder
 * Start the resource in your server.cfg

## Development
Install the dependencies:
```
npm install
```
To build for development:
```
npm run dev
```
Develop at [localhost:8080](http://localhost:8080).

To build for production:
```
npm run build
```
This will build the minimied code optimized for production.

All suggestions are welcome, if you encounter an issue please open a new Issue on the repository.
