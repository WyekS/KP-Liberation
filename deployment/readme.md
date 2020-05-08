# WolfTeam Deployment Scripts

Requisites:

- NodeJS

Steps:

a) Execute `npm install` in `deployment` folder.

b) Configure origin and destination paths in `./config.json` file. Remember to escape Windows OS slashes.

```json
{
    "frameworkOriginFolder": "C:\/Users/.../repoFolder/Missionframework",
    "frameworkDestinationFolder": "C:\/Users/.../mpmissions",
    "basefilesOriginFolder": "C:\/Users/.../repoFolder/Missionbasefiles"
    //...
}
```

c) Run any of these commands with `npm run`:

- Deploy: copy all files from origin path to destination path.

```shell
npm run deploy
```

- Watch: start a file changing listener which sync origin and destination path. You must keep the command active in your console prompt. For cancel `ctrl+c`.

```shell
npm run watch
```

- Map (_not yet available_): with a second parameter you can easily copy specified `mission.sqm` file from the collection basefiles to your desired destination path.

```shell
npm run map takistan
```

Available aliases: `altis`, `vr`, `takistan`, `lythium`.
