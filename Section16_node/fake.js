// Done by Carlos Amaral (2021/05/04)

var faker = require('faker');

console.log(faker.internet.email());

console.log(faker.date.past());



function generateAddress() {
    console.log(faker.address.streetAddress());
    console.log(faker.address.city());
    console.log(faker.address.state());
}

generateAddress();
