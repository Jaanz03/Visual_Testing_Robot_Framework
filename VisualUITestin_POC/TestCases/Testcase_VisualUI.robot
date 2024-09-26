*** Settings ***
Library    DocTest.VisualTest   show_diff=true    take_screenshots=true    screenshot_format=png    #pdf_rendering_engine=ghostscript
Library    DocTest.PdfTest
Library    SeleniumLibrary
Library    OperatingSystem
Resource   ../../VisualUITestin_POC/Keywords/keywordsVisualUI.robot
#Resource   ../../VisualUITestin_POC/Images

#Test Setup      Test initialize

*** Test Cases ***

Compare Two Different Images
    Run Keyword And Expect Error    The compared images are different.    Compare Images    C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/reference.png    C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/WagonRCar.png

Compare Two Same Images
    Compare Images    C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/reference.png    C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/reference - Copy.png

Compare Two Same Images With Different resolution
    Compare Images    C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/reference.png    C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/expressoCar.png

#Compare Two Same Pdf Documents
#    Compare Pdf Documents      C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/pdf_files/Get_Started_With_carpdf.pdf         C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/pdf_files/Get_Started_With_carpdf.pdf
#
#Compare Two Different Pdf Documents
#    Compare Pdf Documents      C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/pdf_files/Get_Started_With_carpdf.pdf         C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/pdf_files/Get_Started_With_Smallpdf.pdf
#
Compare Two Pdf Documents with Text Content
     Compare Images      C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/sample_1_page_moved.pdf         C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/sample_pdf.pdf      compare=text    get_pdf_content=${true}

Capture Image at Website
        Open Application
        Navigate To First Product
        Run Keyword And Expect Error      The compared images are different.   Compare Images      C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/compare-selenium-element-screenshot.png     C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/captured_reference_screenshot.png

Compare Two Same Images and Highlight Differences
    Compare Images    C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/Beach_left.jpg    C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/Beach_right.jpg

Compare Two Same Images with date and Highlight Differences
    Compare Images    C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/Beach_date.png    C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/Beach_left.jpg

Compare two Farm images with date pattern
#    Compare Images    C:/Users/vjansi/PycharmProjects/VisualUITestin_POC/Images/Beach_date.png    testdata/Beach_left.png    placeholder_file=testdata/pattern_mask.json