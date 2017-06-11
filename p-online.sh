function install() {
    cd server;
    npm install;
    cd ../updater;
    npm install;
    cd ..;
}
function start-server() {
    cd server;
    npm start;
}

function update-server() {
    cd updater;
    npm start;
    cd ..;
}
