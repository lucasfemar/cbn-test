using {
    Country,
    Currency
} from '@sap/cds/common';

namespace sap.capire.cbn;

entity Competitors {
    key id   : UUID;
        name : String;
        pna  : Boolean;
        ea   : Boolean;
        pa   : Boolean;
}

entity Segments {
    key id           : UUID;
        name         : String;
        customerType : Country;
        processes    : Association to many Processes
                           on processes.segment = $self
}

entity Processes {
    key id              : UUID;
        segment         : Association to Segments;
        name            : String;
        parentProcessId : UUID;
}
