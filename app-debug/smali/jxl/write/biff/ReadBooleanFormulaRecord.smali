.class Ljxl/write/biff/ReadBooleanFormulaRecord;
.super Ljxl/write/biff/ReadFormulaRecord;
.source "ReadBooleanFormulaRecord.java"

# interfaces
.implements Ljxl/BooleanFormulaCell;


# direct methods
.method public constructor <init>(Ljxl/biff/FormulaData;)V
    .locals 0
    .param p1, "f"    # Ljxl/biff/FormulaData;

    .line 38
    invoke-direct {p0, p1}, Ljxl/write/biff/ReadFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .line 48
    invoke-virtual {p0}, Ljxl/write/biff/ReadBooleanFormulaRecord;->getReadFormula()Ljxl/biff/FormulaData;

    move-result-object v0

    check-cast v0, Ljxl/BooleanFormulaCell;

    invoke-interface {v0}, Ljxl/BooleanFormulaCell;->getValue()Z

    move-result v0

    return v0
.end method
