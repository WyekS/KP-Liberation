const fs  = require('fs-extra');
const path = require('path');
const config = require('../../config.json');
const chokidar = require('chokidar');
const util = require('util');

const deployModule = (function() {
    let module = {};
    let self = module;

    module.init = () => {
        self.config = Object.assign({}, config);
        self.fromPath = path.resolve(self.config.frameworkOriginFolder);
        self.toPath = path.resolve(self.config.frameworkDestinationFolder);
        self.basefilesPath = path.resolve(self.config.basefilesOriginFolder);
    };

    module.deploy = () => {
        console.log(self.fromPath + ' => '+ self.toPath);
        fs.copy(self.fromPath, self.toPath).then(() => {
            console.log('Deployment went OK');
        }).catch((err) => {
            console.log('Deployment Error!!!');
            console.log(err);
        });
    };
    
    module.deployMap = (mapName) => {
        let mapPath = null;
        let aliases = Object.keys(self.config.mapFolderAliases);
        aliases.some((alias) => {
            if (alias === mapName) {
                mapPath = self.config.mapFolderAliases[alias];
                return true;
            }
            return false;
        });
        if (mapPath === null) {
            console.log('Map with alias ' + mapName + ' not found');
            return;
        }
        const originFilePath = path.join(self.basefilesPath, mapPath, 'mission.sqm');
        const destFilePath =  path.join(self.toPath, 'mission.sqm');
        fs.copy(originFilePath, destFilePath).then(() => {
            console.log('Map copied: ' + destFilePath + '\n');
        });
    };
    
    module.watchForDeployment = () => {
        self.watcher = chokidar.watch(self.fromPath, {
            ignored: /(^|[\/\\])\../, // ignore dotfiles
            persistent: true
        });
        self.watcher
            .on('ready', () => console.log('\n\n\nWatching ready...'))
            .on('add', filePath => self._addWatchedFile(filePath))
            .on('change', filePath => self._changeWatchedFile(filePath))
            .on('unlink', filePath => self._removeWatchedFile(filePath))
            .on('error', error => self._handleWatchError(error));
    };

    module._addWatchedFile = (filePath) => {        
        const relativeFilePath = path.relative(self.fromPath, filePath);
        const destFilePath = path.join(path.resolve(self.toPath), relativeFilePath);
        console.log('... Watch - Adding: ' + filePath);
        fs.copy(filePath, destFilePath).then(() => {
            console.log('... Watch - Added: ' + destFilePath + '\n');
        });
    }

    module._changeWatchedFile = (filePath) => {
        const relativeFilePath = path.relative(self.fromPath, filePath);
        const destFilePath = path.join(path.resolve(self.toPath), relativeFilePath);
        console.log('... Watch - Changing: ' + filePath);
        fs.copy(filePath, destFilePath).then(() => {
            console.log('... Watch - Changed: ' + destFilePath + '\n');
        });
    };

    module._removeWatchedFile = (filePath) => {
        const relativeFilePath = path.relative(self.fromPath, filePath);
        const destFilePath = path.join(path.resolve(self.toPath), relativeFilePath);
        console.log('... Watch - Removing: ' + filePath);
        fs.unlink(destFilePath).then(() => {
            console.log('... Watch - Removed: ' + destFilePath + '\n');
        });
    };

    module._handleWatchError = (error) => {
        console.log('Watcher error !!! ' + error);
        if (self.watcher && util.isFunction(self.watcher.close)) {
            self.watcher.close();
            console.log('Watcher closed');
        }
    };

    return {
        init: module.init,
        deploy: module.deploy,
        deployMap: module.deployMap,
        watchForDeployment: module.watchForDeployment,
    };

})();

deployModule.init();

module.exports = deployModule;
