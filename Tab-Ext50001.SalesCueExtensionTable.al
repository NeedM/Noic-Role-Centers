tableextension 50254 "Sales Cue Extension.Table" extends "Sales Cue"
{
    fields
    {
        field(50000; "Blanket Sales Orders Open"; Integer)
        {
            Caption = 'Blanket Sales Orders Open';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = FILTER("Blanket Order"),
                                                      Status = FILTER(open)));
        }
        field(50001; "Blantet Sales Orders  Released"; Integer)
        {
            Caption = 'Banket Orders Released';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = FILTER("Blanket Order"),
                                                      Status = FILTER(Released)));
        }
        field(50002; "Sales Orders Open"; Integer)
        {
            Caption = 'Sales Orders Open';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = FILTER(order),
                                                      Status = FILTER(open)));
        }
        field(50003; "Sales Orders Pending Appr"; Integer)
        {
            Caption = 'Sales Orders Pending Approval';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = FILTER(order),
                                                      Status = FILTER("Pending Approval")));
        }
        field(50004; "Sales Orders Released"; Integer)
        {
            Caption = 'Sales Orders Released';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = FILTER(order),
                                                      Status = FILTER(Released)));
        }
        field(50005; "Purchase Requisitions - Open"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Purchase), Status = const(Open)));
            Caption = 'Purchase Requisitions - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50006; "Purchase Req Pending Approval"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Purchase), Status = const(Open)));
            Caption = 'Purchase Requisitions - Pending Approvals';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50007; "Purchase Requisitions Released"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Purchase), Status = const(Released)));
            Caption = 'Purchase Requisitions Released';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50008; "Stock Requisitions - Open"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Stock), Status = const(Open)));
            Caption = 'Stock Requisitions - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50009; "Stock Requisitions - Pending"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Stock), Status = const("Pending Approval")));
            Caption = 'Stock Requisitions - Pending Approval';
            Editable = false;
            FieldClass = FlowField;
        }
        field(500010; "Stock Requisitions - Released"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Stock), Status = const(Released)));
            Caption = 'Stock Requisitions - Stock Requisitions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(500011; "Sales Proforma Invoices"; Integer)
        {
            CalcFormula = Count("Sales Header" where("Document Type" = const(Quote)));
            Caption = 'Sales Proforma Invoices';
            Editable = false;
            FieldClass = FlowField;
        }


    }
}
