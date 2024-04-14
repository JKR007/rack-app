# rack-app
Small rack app that demonstrates what is rack and how it works

### Versions

> ruby - 3.0.3

## Running application

### With "thin" server - run command:
`>% thin -R rack_app/rack_app.ru -a 127.0.0.1 -p 3000 start`

### With "unicorn" server - run command:
`>% unicorn rack_app/rack_app.ru -l 127.0.0.1:3000`

### With "puma" server - run command:
`>% puma rack_app/rack_app.ru -b tcp://127.0.0.1:3000`

--
> After running the server, open the ppplication on the browser with the url http://127.0.0.1:3000

In the context of Ruby, Rack is the minimal interface between application server and application.