*** Setting ***
Library RequestsLibrary
Library Collections
Library JSONLibrary
Library OperatingSystem 

*** Variable ***
${Base_Url}  https://qarpa.fly.dev/api/v1
${Url}    /users/auth/signin
${data}    {"user":{"email":"xahapa4844@czilou.com","password":"passworddd"}}
# ${Content-Type} application/json

*** Test Case ***
Post Login Test
    Create Session    qarpa    ${Base_Url}    verify=true
    ${headers}=    Create Dictionary    Accept=application/json    Content-Type=application/json    charset=utf-8


# POST request with data
	${response}=    POST On Session    my_session    ${Url}    headers=${headers}    json=${data}
    log to console    ${response.status_code}
    log to console    ${response.content}

