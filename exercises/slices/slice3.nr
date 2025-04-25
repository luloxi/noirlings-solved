// slice3.nr
// use the `hint` watch subcommand for a hint.

fn transform_slice(input: [Field]) -> [Field] {
    // TODO:
    // 1. Double each element in the slice using map
    let slice1 = input.map(|a| a * 2);
    // 2. Filter out all elements that are greater than 10
    let slice2 = slice1.filter(|a| a as u64 <= 10);
    // 3. Return the resulting slice
    slice2
    // Your code here
}

fn main() {
    let input = &[2, 4, 6, 8];
    let result = transform_slice(input);

    assert(result.len() == 2);
    assert(result[0] == 4);
    assert(result[1] == 8);
}

#[test]
fn test_transformation() {
    main();
}
