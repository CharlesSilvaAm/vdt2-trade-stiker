***Settings***
Documentation    Arquivo principal do projeto
Library          Browser

Resource        pages/login.resource
Resource        pages/dash.resource

*** Keywords ***
Do Login
    Go To Login Page        
    Submit Credentials        papito@gmail.com    vaibrasil
    User Logged In

Start Test
    New Browser          headless=False        browser=chrome 

Finish Test
    Sleep             1   # <----- Thinking Time
    Take Screenshot

# rodar na linha de comando multi Browser definindo qual você quer
# robot -d ./logs -v BROWSER:chromium tests/
