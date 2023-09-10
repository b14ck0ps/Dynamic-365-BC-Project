table 50134 "Student Course"
{
    Caption = 'Student Course';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; " Student Course No"; Integer)
        {
            Caption = ' Student Course No';
            AutoIncrement = true;

        }
        field(2; "Course"; Code[10])
        {
            TableRelation = Course;
            trigger OnValidate()
            var
                CourseRec: Record "Course";
            begin
                if CourseRec.Get("Course") then begin
                    "Course Name" := CourseRec.Name;
                end
            end;

        }
        field(3; "Course Name"; Text[50])
        {
            Caption = 'Course Name';
        }
        field(4; "Student ID No"; Code[10])
        {
            Caption = 'Student ID No';
        }
    }
    keys
    {
        key(PK; "Student ID No", " Student Course No")
        {
            Clustered = true;
        }
    }
}
