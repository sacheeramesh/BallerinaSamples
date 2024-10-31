import sample_1.database;

type EmployeeResponse record {|
    *database:DatabaseEmployee;
    int count;
|};
