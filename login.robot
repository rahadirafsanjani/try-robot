*** Setting ***
Library    RequestsLibrary
Library    Collections
Library    JSONLibrary
Library    OperatingSystem 

*** Variable ***
${Base_Url}  https://qarpa.fly.dev/api/v1
${Url}    /users/auth/signin
${data}    {"user":{"email":"xahapa4844@czilou.com","password":"passworddd"}}
# ${Content-Type} application/json

*** Test Case ***
Post Login Test
    Create Session    qarpa    ${Base_Url}    verify=true
    ${headers}=    Create Dictionary    Accept=application/json    Content-Type=application/json    charset=utf-8
	${response}=    POST On Session    qarpa    ${Url}    headers=${headers}    data=${data}
    # parse
    ${status_code}=    convert to string    ${response.status_code}
    ${body}=    Convert To String    ${response.content}
    # validating
    Should Be Equal    ${status_code}    200
    Should Contain    ${body}    Hafiz