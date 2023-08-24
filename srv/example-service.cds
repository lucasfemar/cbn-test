using {sap.capire.cbn as my} from '../db/schema';

service ExampleService {
    entity Competitors as projection on my.Competitors
    entity Segments    as projection on my.Segments
    entity Processes   as projection on my.Processes
}
