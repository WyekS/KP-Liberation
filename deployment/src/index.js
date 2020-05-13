const deployModule = require('./modules/deployModule');

let cmdArgs = process.argv.slice(2);
if (!(cmdArgs && cmdArgs.length)) {
    console.log('No deployment command specified !!!');
    return;
}
switch(cmdArgs[0]) {
    case 'deploy':
        deployModule.deploy();
        return;
    case 'watch':
        deployModule.watchForDeployment();
        return;
    case 'deployMap':
        if (cmdArgs.length > 1) {
            deployModule.deployMap(cmdArgs[1]);
        } else {
            console.log('Please specify map to add to your deployment: Altis, Takistan, etc.');
        }
        return;
    default:
        console.log('No deployment command recognized !!! : ' + cmdArgs[0]);
}

