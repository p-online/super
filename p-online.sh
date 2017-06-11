function install() {
    cd server;
    npm install;
    cd ../updater;
    npm install;
    cd ..;
}
function start() {
    cd server;
    npm start;
}

function update() {
    cd updater;
    npm start;
    cd ..;
}
