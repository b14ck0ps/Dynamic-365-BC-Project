table 50137 Course
{
    Caption = 'Course';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Code[10])
        {
            Caption = 'ID';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Description; Text[100])
        {
            Caption = 'Description';

        }
        field(4; "Course Instructor ID"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Employee";

            trigger OnValidate()
            var
                Faculty: Record "Employee";
            begin
                if ("Course Instructor ID" <> '') then begin
                    Faculty.GET("Course Instructor ID");
                    "Course Instructor Name" := Faculty.FullName();
                end;
            end;
        }
        field(5; "Course Instructor Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}
