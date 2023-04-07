page 50107 "Item Maintenance Line"
{
    PageType = ListPart;
    ApplicationArea = All;
    AutoSplitKey = true;
    DelayedInsert = true; // Insert the value in table after that the user exits the registry
    MultipleNewLines = true;
    SourceTable = "Maintenance Line";



    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Item No."; rec."Item No.")
                {
                    ApplicationArea = all;
                    Lookup = true; //Enable the lookup
                    TableRelation = "Item Maintenance"; // Table of lookup

                }
                field(Description; rec.Description)
                {
                    ApplicationArea = all;
                    Editable = false;
                }
            }
        }
    }
}