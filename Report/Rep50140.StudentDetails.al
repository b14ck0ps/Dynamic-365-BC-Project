report 50140 "Student Details"
{
    ApplicationArea = All;
    Caption = 'Student Details';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = './Report/Results/StudentDetails.docx';
    DefaultLayout = Word;
    dataset
    {
        dataitem(Student; Student)
        {
            column(StudentID; "Student ID")
            {
            }
            column(StudentName; "Student Name")
            {
            }
            column(StudentAddress; "Student Address")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
