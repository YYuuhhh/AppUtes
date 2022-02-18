.class public abstract Ljxl/biff/BaseCompoundFile;
.super Ljava/lang/Object;
.source "BaseCompoundFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/BaseCompoundFile$PropertyStorage;
    }
.end annotation


# static fields
.field protected static final BIG_BLOCK_DEPOT_BLOCKS_POS:I = 0x4c

.field protected static final BIG_BLOCK_SIZE:I = 0x200

.field private static final CHILD_POS:I = 0x4c

.field private static final COLOUR_POS:I = 0x43

.field public static final COMP_OBJ_NAME:Ljava/lang/String; = "\u0001CompObj"

.field public static final DIRECTORY_PS_TYPE:I = 0x1

.field public static final DOCUMENT_SUMMARY_INFORMATION_NAME:Ljava/lang/String; = "\u0005DocumentSummaryInformation"

.field protected static final EXTENSION_BLOCK_POS:I = 0x44

.field public static final FILE_PS_TYPE:I = 0x2

.field protected static final IDENTIFIER:[B

.field private static final NEXT_POS:I = 0x48

.field public static final NONE_PS_TYPE:I = 0x0

.field protected static final NUM_BIG_BLOCK_DEPOT_BLOCKS_POS:I = 0x2c

.field protected static final NUM_EXTENSION_BLOCK_POS:I = 0x48

.field protected static final NUM_SMALL_BLOCK_DEPOT_BLOCKS_POS:I = 0x40

.field private static final PREVIOUS_POS:I = 0x44

.field protected static final PROPERTY_STORAGE_BLOCK_SIZE:I = 0x80

.field public static final ROOT_ENTRY_NAME:Ljava/lang/String; = "Root Entry"

.field public static final ROOT_ENTRY_PS_TYPE:I = 0x5

.field protected static final ROOT_START_BLOCK_POS:I = 0x30

.field private static final SIZE_OF_NAME_POS:I = 0x40

.field private static final SIZE_POS:I = 0x78

.field protected static final SMALL_BLOCK_DEPOT_BLOCK_POS:I = 0x3c

.field protected static final SMALL_BLOCK_SIZE:I = 0x40

.field protected static final SMALL_BLOCK_THRESHOLD:I = 0x1000

.field public static final STANDARD_PROPERTY_SETS:[Ljava/lang/String;

.field private static final START_BLOCK_POS:I = 0x74

.field public static final SUMMARY_INFORMATION_NAME:Ljava/lang/String; = "\u0005SummaryInformation"

.field private static final TYPE_POS:I = 0x42

.field public static final WORKBOOK_NAME:Ljava/lang/String; = "Workbook"

.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    const-class v0, Ljxl/biff/BaseCompoundFile;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/BaseCompoundFile;->logger:Ljxl/common/Logger;

    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljxl/biff/BaseCompoundFile;->IDENTIFIER:[B

    .line 118
    const-string v0, "Root Entry"

    const-string v1, "Workbook"

    const-string v2, "\u0005SummaryInformation"

    const-string v3, "\u0005DocumentSummaryInformation"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljxl/biff/BaseCompoundFile;->STANDARD_PROPERTY_SETS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        -0x30t
        -0x31t
        0x11t
        -0x20t
        -0x5ft
        -0x4ft
        0x1at
        -0x1ft
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    return-void
.end method

.method static synthetic access$000()Ljxl/common/Logger;
    .locals 1

    .line 28
    sget-object v0, Ljxl/biff/BaseCompoundFile;->logger:Ljxl/common/Logger;

    return-object v0
.end method
