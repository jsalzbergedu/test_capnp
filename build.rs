extern crate capnpc;

fn main() {
  ::capnpc::CompilerCommand::new()
    .file("src/schemas/addressbook.capnp")
    .run()
    .expect("compiling schema");
}
