page 50131 "Student List"
{
    ApplicationArea = All;
    Caption = 'Student List';
    PageType = List;
    SourceTable = Student;
    UsageCategory = Documents;
    CardPageId = "Student Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
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
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group(Student)
            {
                Caption = '&Students';
                action("Edits")
                {
                    Caption = 'Edit';
                    RunObject = Page "Student Card";
                    ToolTip = 'View or add comments for the record.';
                }

            }
        }
    }


}
