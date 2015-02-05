// conceal test -- lines should match

fn main() {
     let (a, b, c, d) = (true, false, 1u32, 2u32);

    "if a ∧ b { }";
     if a && b { }

    "if a ∨ b { }";
     if a || b { }

    "if a ≢ b { }";
     if a != b { }

    "if a ≥ b { }";
     if a >= b { }

    "if a ≤ b { }";
     if a <= b { }

    "if a ∧ ¬b { }";
     if a && !b { }

    "if c ∕ d ≤ 5 { }";
     if c / d <= 5 { }

    "if c − d ≥ 5 { }";
     if c - d >= 5 { }

    "if c × d ≠ 5 { }";
     if c * d >= 5 { }

    "∃ a { _ ↦ () }";
     match a { _ => () }

    "⸙ λ a(∫ c: u32) → u32 { c }";
     pub fn a(mut c: u32) -> u32 { c }

    "if c » d ≡ −5 { }";
     if c >> d == -5 { }

    "if c « d ≡ ¬5 { }";
     if c << d == !5 { }

    "c −= d;";
     c -= d;

    "c ×= d;";
     c *= d;

    "∀ a ∈ 1..5 { }";
     for a in 1..5 { }
}
