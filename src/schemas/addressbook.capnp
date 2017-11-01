@0x865e45be626701ce;

struct Person {
  id @0 :UInt32;
  name @1 :Text;
  birtdate @2 :Date;
  email @3 :Text;
  phones @4 :List(PhoneNumber);

  struct PhoneNumber {
    number @0 :Text;
    type @1 :Type;

    enum Type {
      mobile @0;
      home @1;
      work @2;
    }
  }

    employment :union {
      unemployed @5 :Void;
      employer @6 :Text;
      school @7 :Text;
      selfEmployed @8 :Void;
  }

}

struct Date {
   year @0 :Int16;
   month @1 :UInt8;
   day @2 :UInt8;
}

struct AddressBook {
  people @0 :List(Person);
}
