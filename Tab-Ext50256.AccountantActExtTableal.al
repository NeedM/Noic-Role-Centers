tableextension 50256 "Accountant Act Ext.Table.al" extends "finance cue"
{
    fields
    {
        field(50000; "Purchase Requisitions - Open"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Purchase), Status = const(Open)));
            Caption = 'Purchase Requisitions - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50001; "Purchase Req Pending Approval"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Purchase), Status = const(Open)));
            Caption = 'Purchase Requisitions - Pending Approvals';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50002; "Purchase Requisitions Released"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Purchase), Status = const(Released)));
            Caption = 'Purchase Requisitions Released';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50003; "Stock Requisitions - Open"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Stock), Status = const(Open)));
            Caption = 'Stock Requisitions - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50004; "Stock Requisitions - Pending"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Stock), Status = const("Pending Approval")));
            Caption = 'Stock Requisitions - Pending Approval';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50005; "Stock Requisitions - Released"; Integer)
        {
            CalcFormula = Count("Requisition Header" where("Document Type" = const(Stock), Status = const(Released)));
            Caption = 'Stock Requisitions - Stock Requisitions';
            Editable = false;
            FieldClass = FlowField;
        }

    }
}
