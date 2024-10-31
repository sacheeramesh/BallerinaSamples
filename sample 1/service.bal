import sample_1.database;

import ballerina/http;

service / on new http:Listener(9090) {
    # Get basic information of a given active employee.
    #
    # + email - Email of the employee
    # + return - Basic information of the employee or an error
    resource function get employees/[string email]() returns EmployeeResponse {

        database:Filter filter = {id: 0};
        database:DatabaseEmployee emp = database:getEmployee(filter);
        return {
            count: 0,
            ...emp
        };
    }
}
