This syntax file displays unicode characters for some rust operators and
keywords, turning the following:

```rust
pub fn transform<I: Iterator<Item=u32>>(iter: &mut I) -> Vec<i32> {
    let mut output = Vec::<i32>::new();
    for i in iter.by_ref().map(|j| match j { j if j <= 2 => j + 2, j => j }) {
        output.push(i as i32);
    }
    output
}
fn main() {
    println!("{:?}", transform(&mut (1u32..5)));
}
```

into

```rust
⸙ λ transform<I: Iterator<Item=u32>>(iter: &∫ I) → Vec<i32> {
    let ∫ output = Vec<i32>::new();
    ∀ i ∈ iter.by_ref().map(|j| ∃ j { j if j ≤ 2 ↦ j + 2, j ↦ j }) {
        output.push(i as i32);
    }
    output
}
λ main() {
    println!("{:?}", transform(&§ (1u32..5)));
}
```

This does not – at any point – alter your source code. It simply uses Vim's
"conceal" feature to "hide" `fn` behind `λ`, etc. Whenever the cursor is at a
line with concealed text, the text will be expanded.

This plug-in is very heavily inspired by [vim-haskellConceal][],
[vim-cute-python][] and [the builtin rust conceal][]

[vim-haskellConceal]: https://github.com/Twinside/vim-haskellConceal
[vim-cute-python]: https://github.com/yawaramin/vim-cute-python
[the biltin rust conceal]: https://github.com/rust-lang/rust.vim/blob/master/after/syntax/rust.vim