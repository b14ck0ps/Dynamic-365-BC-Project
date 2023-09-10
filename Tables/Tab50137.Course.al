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
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}
