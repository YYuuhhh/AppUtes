.class public Ljxl/biff/formula/FormulaException;
.super Ljxl/JXLException;
.source "FormulaException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/formula/FormulaException$FormulaMessage;
    }
.end annotation


# static fields
.field public static final BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

.field static final CELL_NAME_NOT_FOUND:Ljxl/biff/formula/FormulaException$FormulaMessage;

.field static final INCORRECT_ARGUMENTS:Ljxl/biff/formula/FormulaException$FormulaMessage;

.field static final LEXICAL_ERROR:Ljxl/biff/formula/FormulaException$FormulaMessage;

.field static final SHEET_REF_NOT_FOUND:Ljxl/biff/formula/FormulaException$FormulaMessage;

.field static final UNRECOGNIZED_FUNCTION:Ljxl/biff/formula/FormulaException$FormulaMessage;

.field static final UNRECOGNIZED_TOKEN:Ljxl/biff/formula/FormulaException$FormulaMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljxl/biff/formula/FormulaException$FormulaMessage;

    const-string v1, "Unrecognized token"

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException$FormulaMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaException;->UNRECOGNIZED_TOKEN:Ljxl/biff/formula/FormulaException$FormulaMessage;

    .line 67
    new-instance v0, Ljxl/biff/formula/FormulaException$FormulaMessage;

    const-string v1, "Unrecognized function"

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException$FormulaMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaException;->UNRECOGNIZED_FUNCTION:Ljxl/biff/formula/FormulaException$FormulaMessage;

    .line 72
    new-instance v0, Ljxl/biff/formula/FormulaException$FormulaMessage;

    const-string v1, "Only biff8 formulas are supported"

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException$FormulaMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    .line 77
    new-instance v0, Ljxl/biff/formula/FormulaException$FormulaMessage;

    const-string v1, "Lexical error:  "

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException$FormulaMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaException;->LEXICAL_ERROR:Ljxl/biff/formula/FormulaException$FormulaMessage;

    .line 82
    new-instance v0, Ljxl/biff/formula/FormulaException$FormulaMessage;

    const-string v1, "Incorrect arguments supplied to function"

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException$FormulaMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaException;->INCORRECT_ARGUMENTS:Ljxl/biff/formula/FormulaException$FormulaMessage;

    .line 87
    new-instance v0, Ljxl/biff/formula/FormulaException$FormulaMessage;

    const-string v1, "Could not find sheet"

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException$FormulaMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaException;->SHEET_REF_NOT_FOUND:Ljxl/biff/formula/FormulaException$FormulaMessage;

    .line 92
    new-instance v0, Ljxl/biff/formula/FormulaException$FormulaMessage;

    const-string v1, "Could not find named cell"

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException$FormulaMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/biff/formula/FormulaException;->CELL_NAME_NOT_FOUND:Ljxl/biff/formula/FormulaException$FormulaMessage;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V
    .locals 1
    .param p1, "m"    # Ljxl/biff/formula/FormulaException$FormulaMessage;

    .line 103
    invoke-static {p1}, Ljxl/biff/formula/FormulaException$FormulaMessage;->access$000(Ljxl/biff/formula/FormulaException$FormulaMessage;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljxl/JXLException;-><init>(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljxl/biff/formula/FormulaException$FormulaMessage;I)V
    .locals 2
    .param p1, "m"    # Ljxl/biff/formula/FormulaException$FormulaMessage;
    .param p2, "val"    # I

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljxl/biff/formula/FormulaException$FormulaMessage;->access$000(Ljxl/biff/formula/FormulaException$FormulaMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljxl/JXLException;-><init>(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljxl/biff/formula/FormulaException$FormulaMessage;Ljava/lang/String;)V
    .locals 2
    .param p1, "m"    # Ljxl/biff/formula/FormulaException$FormulaMessage;
    .param p2, "val"    # Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljxl/biff/formula/FormulaException$FormulaMessage;->access$000(Ljxl/biff/formula/FormulaException$FormulaMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljxl/JXLException;-><init>(Ljava/lang/String;)V

    .line 126
    return-void
.end method
