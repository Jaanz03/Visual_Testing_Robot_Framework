*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem

*** Variables ***

${DEFAULT_TIMEOUT}      30s

*** Keywords ***
Test initialize
    [Arguments]     ${clean_report_folder}=Y
    IF  '${clean_report_folder}'=='Y'
        Empty Directory     ${CURDIR}/./../reports
        log    Delete Old Screenshots    console=${True}
    END

Open Application
    Create Webdriver    Chrome
    Go To       https://www.marutisuzuki.com/
    Maximize Browser Window
    wait until element is visible   id:marutiLogo      timeout=${DEFAULT_TIMEOUT}

Navigate To First Product
    wait until element is visible       (//div[@class="image-area"])[1]     timeout=${DEFAULT_TIMEOUT}
    Scroll Element Into View        (//div[@class="image-area"])[1]
    sleep   10s
    Capture Element Screenshot      (//div[@class="image-area"])[1]         compare-selenium-element-screenshot.png
    Copy File                C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/reports/Screenshots/compare-selenium-element-screenshot.png        c:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images
#    click element           (//div[@class="image-area"])[1]
