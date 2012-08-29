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

    curl http://localhost:3000/me.json?auth_token=3KzQzdstMHpLxDYfrjfp




### Get my informations

    curl http://localhost:3000/me.json?auth_token=TOKEN

### Get my devices

    curl http://localhost:3000/me/devices.json?auth_token=TOKEN

### Create a device

    curl -X POST -d 'device[udid]=123&device[push_token]=asdf&device[name]=josemar+iphone&device[kind]=iphone' http://localhost:3000/me/devices.json?auth_token=TOKEN

### Delete a device

		curl -X DELETE http://localhost:3000/me/devices/1.json?auth_token=TOKEN

### Get my authorizations

    curl http://localhost:3000/me/authorizations.json?auth_token=TOKEN

### Delete a authorization

		curl -X DELETE http://localhost:3000/me/authorizations/1.json?auth_token=TOKEN

### Get events

    curl http://localhost:3000/events.json?auth_token=TOKEN

### Get one event

    curl http://localhost:3000/events/1.json?auth_token=TOKEN



