import sample_2.database;
import sample_2.types;

import ballerina/http;

service / on new http:Listener(9090) {
    # Get basic information of a given active employee.
    #
    # + email - Email of the employee
    # + return - Basic information of the employee or an error
    resource function get employees/[string email]() returns types:EmployeeResponse {

        types:EmployeeFilter filter = {id: 0};
        types:Employee emp = database:getEmployee(filter);
        return {
            count: 0,
            ...emp
        };
    }
}
