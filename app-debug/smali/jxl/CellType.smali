.class public final Ljxl/CellType;
.super Ljava/lang/Object;
.source "CellType.java"


# static fields
.field public static final BOOLEAN:Ljxl/CellType;

.field public static final BOOLEAN_FORMULA:Ljxl/CellType;

.field public static final DATE:Ljxl/CellType;

.field public static final DATE_FORMULA:Ljxl/CellType;

.field public static final EMPTY:Ljxl/CellType;

.field public static final ERROR:Ljxl/CellType;

.field public static final FORMULA_ERROR:Ljxl/CellType;

.field public static final LABEL:Ljxl/CellType;

.field public static final NUMBER:Ljxl/CellType;

.field public static final NUMBER_FORMULA:Ljxl/CellType;

.field public static final STRING_FORMULA:Ljxl/CellType;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Ljxl/CellType;

    const-string v1, "Empty"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    .line 58
    new-instance v0, Ljxl/CellType;

    const-string v1, "Label"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->LABEL:Ljxl/CellType;

    .line 61
    new-instance v0, Ljxl/CellType;

    const-string v1, "Number"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    .line 64
    new-instance v0, Ljxl/CellType;

    const-string v1, "Boolean"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->BOOLEAN:Ljxl/CellType;

    .line 67
    new-instance v0, Ljxl/CellType;

    const-string v1, "Error"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->ERROR:Ljxl/CellType;

    .line 70
    new-instance v0, Ljxl/CellType;

    const-string v1, "Numerical Formula"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    .line 74
    new-instance v0, Ljxl/CellType;

    const-string v1, "Date Formula"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->DATE_FORMULA:Ljxl/CellType;

    .line 77
    new-instance v0, Ljxl/CellType;

    const-string v1, "String Formula"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    .line 80
    new-instance v0, Ljxl/CellType;

    const-string v1, "Boolean Formula"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->BOOLEAN_FORMULA:Ljxl/CellType;

    .line 84
    new-instance v0, Ljxl/CellType;

    const-string v1, "Formula Error"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->FORMULA_ERROR:Ljxl/CellType;

    .line 87
    new-instance v0, Ljxl/CellType;

    const-string v1, "Date"

    invoke-direct {v0, v1}, Ljxl/CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/CellType;->DATE:Ljxl/CellType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Ljxl/CellType;->description:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Ljxl/CellType;->description:Ljava/lang/String;

    return-object v0
.end method
