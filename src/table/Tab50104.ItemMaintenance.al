table 50104 "Item Maintenance"
{


    fields
    {
        field(10; "Item No."; Integer)
        {
            Caption = 'Item No.';
            AutoIncrement = true;
            DataClassification = ToBeClassified;
        }
        field(20; "Category No."; code[20])
        {
            Caption = 'Category No.';
            DataClassification = ToBeClassified;
        }
        field(30; Description; Text[250])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(40; "Mileage 10.000"; Boolean)
        {
            Caption = 'Mileage 10.000';
            DataClassification = ToBeClassified;
        }
        field(50; "Mileage 20.000"; Boolean)
        {
            Caption = 'Mileage 20.000';
            DataClassification = ToBeClassified;
        }
        field(60; "Mileage 30.000"; Boolean)
        {
            Caption = 'Mileage 30.000';
            DataClassification = ToBeClassified;
        }
        field(70; "Mileage 40.000"; Boolean)
        {
            Caption = 'Mileage 40.000';
            DataClassification = ToBeClassified;
        }
        field(80; "Mileage 50.000"; Boolean)
        {
            Caption = 'Mileage 50.000';
            DataClassification = ToBeClassified;
        }
        field(90; "Mileage 60.000"; Boolean)
        {
            Caption = 'Mileage 60.000';
            DataClassification = ToBeClassified;
        }
        field(100; "Mileage 70.000"; Boolean)
        {
            Caption = 'Mileage 70.000';
            DataClassification = ToBeClassified;
        }
        field(110; "Mileage 80.000"; Boolean)
        {
            Caption = 'Mileage 80.000';
            DataClassification = ToBeClassified;
        }
        field(120; "Mileage 90.000"; Boolean)
        {
            Caption = 'Mileage 90.000';
            DataClassification = ToBeClassified;
        }
        field(130; "Mileage 100.000"; Boolean)
        {
            Caption = 'Mileage 100.000';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Item No.")
        {
            Clustered = true;
        }
    }
}
