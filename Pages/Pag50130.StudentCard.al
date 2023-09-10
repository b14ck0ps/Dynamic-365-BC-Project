page 50130 "Student Card"
{
    ApplicationArea = All;
    Caption = 'Student Card';
    PageType = Card;
    SourceTable = student;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Student ID"; Rec."Student ID")
                {
                    ToolTip = 'Specifies the value of the Student ID field.';
                    Editable = false;
                }
                field("Student Address"; Rec."Student Address")
                {
                    ToolTip = 'Specifies the value of the Student Address field.';
                }

                field("Student Name"; Rec."Student Name")
                {
                    ToolTip = 'Specifies the value of the Student Name field.';
                }
            }
            group("Student Courese")
            {
                part(courseList; "Student Course ListPart")
                {
                    SubPageLink = "Student ID No" = FIELD("Student ID");
                    ApplicationArea = All;
                }
            }
        }
    }
}
