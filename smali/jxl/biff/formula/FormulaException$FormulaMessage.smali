.class Ljxl/biff/formula/FormulaException$FormulaMessage;
.super Ljava/lang/Object;
.source "FormulaException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/formula/FormulaException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormulaMessage"
.end annotation


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "m"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ljxl/biff/formula/FormulaException$FormulaMessage;->message:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000(Ljxl/biff/formula/FormulaException$FormulaMessage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljxl/biff/formula/FormulaException$FormulaMessage;

    .line 32
    iget-object v0, p0, Ljxl/biff/formula/FormulaException$FormulaMessage;->message:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Ljxl/biff/formula/FormulaException$FormulaMessage;->message:Ljava/lang/String;

    return-object v0
.end method
