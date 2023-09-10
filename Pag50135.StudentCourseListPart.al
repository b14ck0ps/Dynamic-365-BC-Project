page 50135 "Student Course ListPart"
{
    ApplicationArea = All;
    Caption = 'Student Course ListPart';
    PageType = ListPart;
    SourceTable = "Student Course";
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Course ID"; Rec." Student Course No")
                {
                    ToolTip = 'Specifies the value of the Course ID field.';
                }
                field("Course"; Rec.Course)
                {

                }
                field("Course Name"; Rec."Course Name")
                {
                    ToolTip = 'Specifies the value of the Course Name field.';
                }
                field("Student ID No"; Rec."Student ID No")
                {
                    ToolTip = 'Specifies the value of the Student ID No field.';
                }
            }
        }
    }
}
