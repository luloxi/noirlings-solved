// strings2.nr

fn get_ascii_sum(text: str<5>) -> Field {
    // TODO: Return the sum of ASCII values of all characters
    // Hint: Convert string to bytes and sum them
    let char_bytes = text.as_bytes();
    // Run a loop on byte array to sum the values
    let mut sum = 0;
    for i in 0..5 {
        sum = sum + char_bytes[i] as Field;
    }
    sum as Field
}

fn main() {
    assert(get_ascii_sum("Hello") == 500); // Sum of ASCII values of "Hello"
}

#[test]
fn test_hex_and_ascii() {
    main();
}
