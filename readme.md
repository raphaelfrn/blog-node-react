# Draft

To do list:
<s>-Css:   -style
        -logo
-update links </s>
-change categories?
-hydrate database with proper articles and images and export sql to add it here
<s>-add modals to delete post </s>
<s>-posts: permission to display them without being logged (username null) </s>
-Write button in menu only whe logged in
-add tests
-finish this readme to have a proper "doc"



# Context
This project is a full-stack blog application created using Node.js, React.js, and MySQL. Inspired by a tutorial (by [LamaDev] ), I developed this application to practice working with Node and React. I customized the CSS to my preferences and added tests to demonstrate my ability to build a full-stack application from start to almost finish (deployment excluded). You'll find the SQL database file in this repository



## Setup Notes

These notes serve as a quick reference for setting up a development environment on a new PC, with the right dependecies for this project.

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