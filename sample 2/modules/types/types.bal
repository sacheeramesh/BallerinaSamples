
# Service level employee.
public type Employee record {|
    int databaseId;
|};

# Service level employee.
public type EmployeeResponse record {|
    *Employee;
    int count;
|};

public type EmployeeFilter record {|
    int id;
|};
