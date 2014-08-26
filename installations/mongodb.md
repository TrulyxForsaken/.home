# MongoDB
on OSX

### Install mongo
```bash
brew install mongodb
sudo mkdir -p /data/db
sudo chown $USER /data/db
mongod
mongo
```

### Run mongod on restart
```bash
#To have launchd start mongodb at login:
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
#Then to load mongodb now:
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
#Or, if you don't want/need launchctl, you can just run:
mongod --config /usr/local/etc/mongod.conf
```

### Example
```mongo
show dbs
use DATABASENAME
db
show collections
var col = db.aCollection
col.find()
col.ensureIndex({id:1}, {unique:true})
col.insert({})
col.insert({id:1})

var a = col.findOne({id:1})
a.x = 'wat'
col.update({id:a.id},a)

col.remove({})
col.find()

exit
```