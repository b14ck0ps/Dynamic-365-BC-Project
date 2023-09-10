tableextension 50125 CustomerExt extends Customer
{
    fields
    {
        field(50133; Car; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Car';
            TableRelation = Car.Car;
        }
    }
}