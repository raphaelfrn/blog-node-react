# Draft

To do list:
-Css:   -style
        -logo
-update links
-change categories?
-hydrate database with proper articles and images and export sql to add it here
-add modals to delete post
-post permission to display them without being logged (username null)
-add tests
-finish this readme to have a proper "doc"



# Context
This project is a fullstack blog application made using node.js, ReactJs and mySql.
Inspired from a tutorial made by [LamaDev], I made this application to practice using node and react. I customized css to my own liking and added tests in order to showcase my ability to build a full stack application from start to almost finish (no deployment here).
You'll find the sql database file in this repository.


## Quick Start
Notes for myself, because I'll probably forget all the installation setup, dependecies and things to install on a fresh pc.

Install [mySql], [Xampp], [NodeJs]

First step, as it is from a tutorial from [LamaDev]: git clone from his repository "youtube-2022"

```sh
git clone --single-branch -b "react-mini" https://github.com/safak/youtube2022.git .
```

Open-up first terminal and name it client

```sh
cd .\client\
```

Client side:

[React-Router-Dom]
```sh
npm install react-router-dom
```

[React-Quill] (Rich text editor)
```sh
npm install react-quill
```

[Moment]
```sh
npm install moment
```
[DomPurify]
```sh
npm install dompurify
```

To launch client
```sh
npm run dev
```


Open another terminal, name it api or backend or server

```sh
cd .\api\
```


Server side: 

[Express], mySql, [Nodemon]
```sh
npm install express mysql nodemon
```

[BCrypt]
```sh
npm install bcrypt
```

[Axios]
```sh
npm install axios
```

[CORS] (optional)
```sh
npm install cors
```

[JSonWebToken]
```sh
npm install jsonwebtoken
```

[Cookie-Parser]
```sh
npm install cookie-parser
```

[Multer] (upload files)
```sh
npm install multer
```

To launch server
```sh
npm start
```

[//]: # Links

[LamaDev]: <https://www.youtube.com/@LamaDev>
[mySql]: <https://www.mysql.com/fr/downloads/>
[Xampp]: <https://www.apachefriends.org/fr/index.html>
[NodeJs]: <https://nodejs.org/en/download>
[React-Router-Dom]: <https://reactrouter.com/en/main/start/overview>
[React-Quill]: <https://github.com/zenoamaro/react-quill>
[Moment]: <https://momentjs.com>
[DomPurify]: <https://github.com/cure53/DOMPurify>
[Express]: <https://expressjs.com/fr/guide/routing.html>
[Nodemon]: <https://nodemon.io>
[BCrypt]: <https://www.npmjs.com/package/bcrypt>
[Axios]: <https://axios-http.com/fr/docs/intro>
[CORS]: <https://expressjs.com/en/resources/middleware/cors.html>
[JSonWebToken]: <https://www.npmjs.com/package/jsonwebtoken>
[Cookie-Parser]: <https://www.npmjs.com/package/cookie-parser>
[Multer]: <https://github.com/expressjs/multer>