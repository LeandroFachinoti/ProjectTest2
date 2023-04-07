table 50103 "Vehicle Category"
{

    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Category No."; Integer)
        {
            Caption = 'Category No.';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[60])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(Key1; "Category No.")
        {
            Clustered = true;
        }
    }
}
