// traits3.nr
// use the `hint` watch subcommand for a hint.
// Generic Traits: This exercise demonstrates how to work with generic traits

trait Convert<T> {
    fn convert(self) -> T;
}

struct Celsius {
    temp: Field,
}

struct Fahrenheit {
    temp: Field,
}

// TODO: Implement Convert trait to convert Celsius to Fahrenheit
// Formula: F = (C X 9/5) + 32
impl Convert<Fahrenheit> for Celsius {
    // Add your implementation here
    fn convert(self) -> Fahrenheit {
        // Convert Celsius to Fahrenheit
        let c: Field = self.temp; // Use Field type for temperature
        let scaled = c * 9; // Perform multiplication first
        let divided = scaled / 5; // Then perform division
        Fahrenheit {
            temp: divided + 32, // Add 32 and return Fahrenheit struct
        }
    }
}

#[test]
fn test_temperature_conversion() {
    let celsius = Celsius { temp: 0 };
    let fahrenheit = celsius.convert();
    assert(fahrenheit.temp == 32);

    let celsius = Celsius { temp: 100 };
    let fahrenheit = celsius.convert();
    assert(fahrenheit.temp == 212);
}
