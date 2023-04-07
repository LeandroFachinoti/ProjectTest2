table 50102 "Car maintenance table"
{

    DataClassification = CustomerContent;

    fields
    {
        field(10; "Invoice No."; code[20])
        {
            DataClassification = CustomerContent;
        }
        field(20; Plate; Code[50])
        {
            Caption = 'Plate';
            DataClassification = CustomerContent;
        }
        field(40; "Date"; Date)
        {
            Caption = 'Date';
            DataClassification = CustomerContent;
        }
        field(50; "Maintenance Mileage"; Integer)
        {
            Caption = 'Maintenance Mileage';
            DataClassification = CustomerContent;
        }
        field(60; "Maintenance Cust"; Decimal)
        {
            Caption = 'Maintenance Cust';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(Key1; "Invoice No.")
        {
            Clustered = true;
        }
    }
}
