# Alphaville Back End
A mobile app to browse and save current NYC art exhibitions 
based on your current location, or through filters like popular and free.<br><br>

## Getting Started<br>
### Prerequisite
Front end repository built on Rails available 
[here](https://github.com/lin-jessica/alphaville).<br><br>

### Installing
#### Back End
1. Download [ngrok](https://ngrok.com/) to expose local server to the public 
internet over secure tunnels.<br>

2. Start Rails server, with OSX & Linux: `rails s`.

3. Start ngrok session, with OSX & Linux: `./ngrok http 3000`.<br>

#### Front End
1. Copy the forwarding HTTPS URL from ngrok, and set `const ngrokUrl` to this new address.<br>
Located here: `/alphaville/src/ngrok.js`

2. Download [expo.io](https://expo.io) to display the interface by rendering an iOS simulation on 
your desktop, or through the expo app on your phone.

3. Start expo project with `expo start`.

4. Choose to run the simulation as an option from the browser, or your scan the generated QR code 
with your smart phone to open up the app from expo mobile.<br><br>

### Built With
[React Native](https://facebook.github.io/react-native/) - Mobile Interface<br>
[Ruby on Rails](https://rubyonrails.org/) - Server Framework<br>

Learned React Native and built this app within two weeks.
