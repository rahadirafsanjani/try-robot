*** Setting ***
Library  RequestsLibrary
Library  Collections

*** Variable ***
${Base_Url}  https://reqres.in/api/
${Params}    users?page=2

*** Test Case ***
Students_Details
    create session  get_information  ${Base_Url}  verify=true
    ${response}=  get on session  get_information  ${Params}

    log to console  ${response.status_code}
    log to console  ${response.content}
    log to console  ${response.headers}

    #VALIDATION
    ${Status_Code}=  convert to string  ${response.status_code}
    should be equal  ${Status_Code}  200