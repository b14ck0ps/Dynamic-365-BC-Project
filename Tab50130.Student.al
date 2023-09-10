table 50130 Student
{
    Caption = 'Student';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Code[10])
        {
            Caption = 'Student ID';
        }
        field(2; "Student Name"; Text[50])
        {
            Caption = 'Student Name';
        }
        field(3; "Student Address"; Text[100])
        {
            Caption = 'Student Address';
        }
    }
    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }

    trigger OnDelete()
    var
        StudentCourseRec: Record "Student Course";
    begin
        StudentCourseRec.SetRange("Student ID No", "Student ID");
        while StudentCourseRec.FindSet(true) do
            StudentCourseRec.Delete(true);
    end;

}
