BASEDIR=$(dirname "(dirname "$0")")
function install() {
    if [ -f $BASEDIR/config ]
    then
        (cd $BASEDIR/server && exec npm install)
        (cd $BASEDIR/updater && exec npm install
    else
        echo "No config file found, create one using the conf command"
    fi
}
function start() {
    if [ -f $BASEDIR/config ]
    then
        (cd $BASEDIR/server && exec sudo npm start)
    else
        echo "No config file found, create one using the conf command"
    fi
}

function update() {
    if [ -f $BASEDIR/config ]
    then
        (cd $BASEDIR/updater && exec sudo npm start)
    else
        echo "No config file found, create one using the conf command"
    fi
}
function conf() {
    if [ -f $BASEDIR/config ]
    then
        echo "Config file exists, edit $BASEDIR/config to change the configuration."
    else
        echo "Creating config file."
        cp $BASEDIR/super/config $BASEDIR/config
        echo "Config file created, edit $BASEDIR/config to change the configuration."
    fi
}
