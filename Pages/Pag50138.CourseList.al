page 50138 "Course List"
{
    ApplicationArea = All;
    Caption = 'Course List';
    PageType = List;
    SourceTable = Course;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Course Instructor"; Rec."Course Instructor ID")
                {
                    ToolTip = 'Specifies the value of the Course Instructor field.';
                }
                field("Course Instructor Name"; Rec."Course Instructor Name")
                {
                    ToolTip = 'Specifies the value of the Course Instructor Name field.';
                }
            }
        }
    }
}
