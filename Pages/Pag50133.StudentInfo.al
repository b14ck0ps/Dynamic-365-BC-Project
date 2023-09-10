page 50133 "Student Info"
{
    ApplicationArea = All;
    Caption = 'Student Info';
    PageType = Document;
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
                }
                field("Student Name"; Rec."Student Name")
                {
                    ToolTip = 'Specifies the value of the Student Name field.';
                }
                field("Student Address"; Rec."Student Address")
                {
                    ToolTip = 'Specifies the value of the Student Address field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
            }
        }
    }
}
