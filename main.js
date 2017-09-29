const {app, BrowserWindow} = require('electron');
const path = require('path');
const url = require('url');

function createWindow() {
    let win = new BrowserWindow();

    win.on('closed', () => {
        win = null;
    });

    win.loadURL(url.format({
        pathname: path.join(__dirname, 'index.html'),
        protocol: 'file:',
        slashes: true
    }));

    return win;
}

app.on('ready', function() {
    createWindow();
});

app.on('window-all-closed', () => {
    app.quit();
});
