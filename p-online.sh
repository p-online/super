function install() {
    cd server;
    npm install;
    cd ../updater;
    npm install;
    cd ..;
}
function start() {
    cd server;
    sudo npm start;
}

function update() {
    cd updater;
    sudo npm start;
    cd ..;
}
