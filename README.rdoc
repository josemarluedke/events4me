# Events4me

## API Usage

Everything is RESTFul


This param is required for authentication of user

    auth_token

The format of result (html, json and xml) should like:

    http://sample.com/page.json
    http://sample.com/page.html
    http://sample.com/page.xml

Exemple

    curl  http://localhost:3000/me.json?auth_token=3KzQzdstMHpLxDYfrjfp




### Get my informations

    curl  http://localhost:3000/me.json?auth_token=TOKEN

### Get events

    curl  http://localhost:3000/events.json?auth_token=TOKEN

### Get one event

    curl  http://localhost:3000/events/1.json?auth_token=TOKEN



