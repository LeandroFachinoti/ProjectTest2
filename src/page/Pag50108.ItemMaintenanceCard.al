page 50108 "Item Maintenance card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Item Maintenance";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Item No."; rec."Item No.")
                {
                    ApplicationArea = All;

                }
                field("Category No."; rec."Category No.")
                {
                    ApplicationArea = All;

                }
                field(Description; rec.Description)
                {
                    ApplicationArea = All;

                }
                field("Mileage 10.000"; rec."Mileage 10.000")
                {
                    ApplicationArea = All;

                }
                field("Mileage 20.000"; rec."Mileage 20.000")
                {
                    ApplicationArea = All;

                }
                field("Mileage 30.000"; rec."Mileage 30.000")
                {
                    ApplicationArea = All;

                }
                field("Mileage 40.000"; rec."Mileage 40.000")
                {
                    ApplicationArea = All;

                }
                field("Mileage 50.000"; rec."Mileage 50.000")
                {
                    ApplicationArea = All;

                }
                field("Mileage 60.000"; rec."Mileage 60.000")
                {
                    ApplicationArea = All;

                }
                field("Mileage 70.000"; rec."Mileage 70.000")
                {
                    ApplicationArea = All;

                }
                field("Mileage 80.000"; rec."Mileage 80.000")
                {
                    ApplicationArea = All;

                }
                field("Mileage 90.000"; rec."Mileage 90.000")
                {
                    ApplicationArea = All;

                }
                field("Mileage 100.000"; rec."Mileage 100.000")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}