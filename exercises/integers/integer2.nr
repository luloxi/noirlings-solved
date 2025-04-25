// integers2.nr
// Learn about signed and unsigned integers with temperature conversion

fn celsius_to_fahrenheit(celsius: i16) -> i16 {
    // Convert Celsius to Fahrenheit using the formula: (celsius * 9 / 5) + 32
    let c: i16 = celsius as i16;
    let scaled = c * 9;
    let divided = scaled / 5;
    (divided + 32) as i16
}

fn is_freezing(temps: [i8; 3]) -> [bool; 3] {
    // Return array of booleans indicating if each temperature is below freezing (0C)
    // Use a for loop to check each temperature
    let mut result = [false; 3]; // Initialize result array with false values

    // Loop through each temperature and check if it's below freezing (0C)
    for i in 0..3 {
        result[i] = temps[i] < 0; // Set to true if temperature is negative (below freezing)
    }

    result
}

fn main() {
    // Test temperature conversion
    assert(celsius_to_fahrenheit(0) == 32);
    assert(celsius_to_fahrenheit(-40) == -40);
    assert(celsius_to_fahrenheit(100) == 212);

    // Test freezing temperatures
    let temps = [-5, 0, 20];
    let freezing = is_freezing(temps);
    assert(freezing == [true, false, false]);
}

#[test]
fn test_temperature() {
    main();
}
