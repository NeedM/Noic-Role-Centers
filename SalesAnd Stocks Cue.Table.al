
table 50258 "Sales And Stocks Cue"
{
    Caption = 'Loading Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Integer)
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }
        field(2; "Pick Instructions - Open"; Integer)
        {
            Caption = 'Pick Instructions - Open';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Pick Instruction Header" where("Approval Status" = filter(Open)));
        }
        field(3; "Pick Instructions - Released"; Integer)
        {
            Caption = 'Pick Instructions - Released';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Pick Instruction Header" where("Approval Status" = filter(Released)));
        }
        field(4; "Pick Instructions - Completed"; Integer)
        {
            Caption = 'Pick Instructions - Completed';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Pick Instruction Header" where("Approval Status" = filter(Completed)));
        }
        field(5; "Sales Orders - Released"; Integer)
        {
            Caption = 'Sales Orders Released';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = FILTER(Order),
                                                      Status = FILTER(Released)));
        }
        field(6; "Sales Orders - Open"; Integer)
        {
            Caption = 'Sales Orders Open';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = FILTER(Order),
                                                      Status = FILTER(open)));
        }
        field(7; "Sales Orders-Pending Approval"; Integer)
        {
            Caption = 'Sales Orders Pending Approval';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = FILTER(Order),
                                                      Status = FILTER("Pending Approval")));
        }
        field(8; "Banket Sales Orders - Released"; Integer)
        {
            Caption = 'Blanket Sales Orders Released';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = FILTER("Blanket Order"),
                                                      Status = FILTER(Released)));
        }
        field(9; "Blanket Sales Order Open"; Integer)
        {
            Caption = 'Blanket Sales Order';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = FILTER("Blanket Order"),
                                                      Status = FILTER(Open)));
        }
        field(10; "Purchase Requisitions - Open"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Purchase), Status = const(Open)));
            Caption = 'Purchase Requisitions - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Purchase Req Pending Approval"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Purchase), Status = const(Open)));
            Caption = 'Purchase Requisitions - Pending Approvals';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Purchase Requisitions Released"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Purchase), Status = const(Released)));
            Caption = 'Purchase Requisitions Released';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Stock Requisitions - Open"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Stock), Status = const(Open)));
            Caption = 'Stock Requisitions - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Stock Requisitions - Pending"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Stock), Status = const("Pending Approval")));
            Caption = 'Stock Requisitions - Pending Approval';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Stock Requisitions - Released"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Stock), Status = const(Released)));
            Caption = 'Stock Requisitions - Stock Requisitions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Sales Proforma Inv Released"; Integer)
        {
            Caption = 'Sales Proforma Invoices';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = FILTER(Quote)));
        }
        field(500011; "Sales Proforma Invoices"; Integer)
        {
            CalcFormula = Count("Sales Header" where("Document Type" = const(Quote)));
            Caption = 'Sales Proforma Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(500012; "Credit Memos - Open"; Integer)
        {
            CalcFormula = Count("Sales Header" where("Document Type" = const("Credit Memo"),
                                                     Status = const(Open)));
            Caption = 'Credit Memos - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(500013; "Credit Memos Pending Approval"; Integer)
        {
            CalcFormula = Count("Sales Header" where("Document Type" = const("Credit Memo"),
                                                     Status = const("Pending Approval")));
            Caption = 'Credit Memos - Pending Approval';
            Editable = false;
            FieldClass = FlowField;
        }
        field(500014; "Credit Memos - Released"; Integer)
        {
            CalcFormula = Count("Sales Header" where("Document Type" = const("Credit Memo"),
                                                     Status = const(Released)));
            Caption = 'Credit Memos - Released';
            Editable = false;
            FieldClass = FlowField;
        }


    }


    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        UserSetup: Record "User Setup";


}