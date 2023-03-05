[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/abdishukri-105/meme-generator/graphs/commit-activity)
[![GitHub forks](https://img.shields.io/github/forks/otsembo/my-todos-sinatra.svg?style=social&label=Fork&maxAge=2592000)](https://github.com/abdishukri-105/meme-generator/network)
[![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/abdishukri-105/meme-generator/blob/master/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
[![Linux](https://svgshare.com/i/Zhy.svg)](https://svgshare.com/i/Zhy.svg)
[![Open Source Love svg1](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)

# Meme Generator App
The Meme Generator is a server-side API built using Ruby's Sinatra DSL, as part of the Moringa School Phase-3 project. The API follows the MVC design pattern, and it provides a backend for a React-based frontend. The API supports all CRUD operations, including POST, DELETE, and PATCH, as well as authentication for secure user access.

Here are the links to the repositories and the live link to the project:

 - [Frontend repository](https://github.com/abdishukri-105/haha-hub)
 - [Backend repository](https://github.com/abdishukri-105/meme-generator)
 - [Live link](https://haha-hub.vercel.app/) 




## Pre-Requisites
In order to use this repository you will need the following:



- Operating System **(Windows `10+`, Linux `3.8+`, or MacOS X `10.7+`)**
- RAM >= 4GB
- Free Space >= 2GB

## Built With
This application has been built with the following tools:

![ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![sqlite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)



- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Rake `v13.0.6`**
- **Puma `v6.1`**
- **rerun `v0.14`**
- **Sinatra `v3.0.5`**


## Setup
You can setup this repository by following this manual

1. Clone the repository
    ```{shell}
   git clone git@github.com:abdishukri-105/meme-generator.git
   ```
2. Ensure the ruby gems are setup in your machine
    ```{shell}
   bundle install
   ```
3. Perform any pending database migrations
   ```{shell}
   rake db:migrate
   ```
4. Run the application
    ```{shell}
    rake start
    ```
5. Open the application from your browser
    ```
   http://localhost:9292
   ```
   
## Application
This application is a simple web API that allows users to:

- Register a new account.
- Log in to existing account.
- Create Memes.
- Update individual memes.
- View all memes.
- Filter memes by title.
- Delete individual meme.

### MODELS
Database schema definitions.

#### TODO

| COLUMN      | DATA TYPE                                       | DESCRIPTION                         | 
|-------------|-------------------------------------------------|-------------------------------------|
| id          | Integer                                         | Unique identifier.                  |
| title       | String                                          | The first part of meme (intro)             |
| message | String                                          | second part of meme (punchline)  |
| updated_at    | Date      | The date the user was updated.        |
| createdAt     | Date      | The date the user was created.        |




#### USER
| COLUMN        | DATA TYPE | DESCRIPTION                           | 
|---------------|-----------|---------------------------------------|
| id            | Integer   | Unique identifier.                    |
| username     | String    | User's username                   |
 | email     | String    | User's email                  |
| password_hash | String    | User's password hashed with `BCrypt`. |
| updated_at    | Date      | The date the user was updated.        |
| createdAt     | Date      | The date the user was created.        |


### ROUTES


1. `/users` - Create a new user account.
   
   ```{json}
   ## REQUEST BODY
   {
    "username": "John Doe",
    "email": "mail@mail.com",
    "password": "12345678"
   }
   ```
2. `login` - Log in a user using username and password.

   ```{json}
   ## REQUEST BODY
   {
    "username": "John Doe",
    "password": "12345678"
   }
   ```
3. `/users/:user_id/memes` - Add a new TODO item.

   ```{json}
   ## REQUEST BODY
   {
    "title": "What did the zero say to the eight?",
    "message": "That belt looks good on you."
   }
   ```
4. `/memes` - List all memes.

   ```{json}
   ## RESPONSE SAMPLE
   {
      "memes": [
     {
      "id": 26,
      "title": "How does the moon cut his hair?",
      "message": "Eclipse it",
      "user_id": 6,
      "created_at": "2023-03-05T07:00:16.885Z",
      "updated_at": "2023-03-05T07:00:16.885Z",
      "user": {
        "username": "eva"
      }
    ]
   }
   ```
5. `/users/:id/memes/:meme_id` - Update an existing and users meme.
 
6. `/memes/:id/users/:user_id` - Delete a TODO item.
   


## LICENSE
This repository is distributed under the MIT License

```markdown
Copyright 2023 Abdishukri Mohamed

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, 
and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

## Author
This repository is maintained by:

- [Abdishukri Mohamed](https://github.com/abdishukri-105) 