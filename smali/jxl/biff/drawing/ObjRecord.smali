.class public Ljxl/biff/drawing/ObjRecord;
.super Ljxl/biff/WritableRecordData;
.source "ObjRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/drawing/ObjRecord$ObjType;
    }
.end annotation


# static fields
.field public static final ARC:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final BUTTON:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final CHECKBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field private static final CLIPBOARD_FORMAT_LENGTH:I = 0x6

.field public static final COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field private static final COMBOBOX_STRUCTURE_LENGTH:I = 0x2c

.field private static final COMMON_DATA_LENGTH:I = 0x16

.field public static final DIALOGUEBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final EDITBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field private static final END_LENGTH:I = 0x4

.field public static final EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final FORMCONTROL:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final GROUP:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final GROUPBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final LABEL:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final LINE:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final LISTBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final MSOFFICEDRAWING:Ljxl/biff/drawing/ObjRecord$ObjType;

.field private static final NOTE_STRUCTURE_LENGTH:I = 0x1a

.field public static final OPTION:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final OVAL:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

.field private static final PICTURE_OPTION_LENGTH:I = 0x6

.field public static final POLYGON:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final RECTANGLE:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final SCROLLBAR:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final SPINBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final TEXT:Ljxl/biff/drawing/ObjRecord$ObjType;

.field public static final UNKNOWN:Ljxl/biff/drawing/ObjRecord$ObjType;

.field private static final logger:Ljxl/common/Logger;


# instance fields
.field private objectId:I

.field private read:Z

.field private type:Ljxl/biff/drawing/ObjRecord$ObjType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    const-class v0, Ljxl/biff/drawing/ObjRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->logger:Ljxl/common/Logger;

    .line 97
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x0

    const-string v2, "Group"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->GROUP:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 98
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x1

    const-string v2, "Line"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->LINE:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 99
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x2

    const-string v2, "Rectangle"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->RECTANGLE:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 100
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x3

    const-string v2, "Oval"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->OVAL:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 101
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x4

    const-string v2, "Arc"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->ARC:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 102
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x5

    const-string v2, "Chart"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 103
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x6

    const-string v2, "Text"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->TEXT:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 104
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/4 v1, 0x7

    const-string v2, "Button"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->BUTTON:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 105
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x8

    const-string v2, "Picture"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 106
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x9

    const-string v2, "Polygon"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->POLYGON:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 107
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xb

    const-string v2, "Checkbox"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->CHECKBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 108
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xc

    const-string v2, "Option"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->OPTION:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 109
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xd

    const-string v2, "Edit Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->EDITBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 110
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xe

    const-string v2, "Label"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->LABEL:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 111
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xf

    const-string v2, "Dialogue Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->DIALOGUEBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 112
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x10

    const-string v2, "Spin Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->SPINBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 113
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x11

    const-string v2, "Scrollbar"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->SCROLLBAR:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 114
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x12

    const-string v2, "List Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->LISTBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 115
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x13

    const-string v2, "Group Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->GROUPBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 116
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x14

    const-string v2, "Combo Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 117
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v2, 0x1e

    const-string v3, "MS Office Drawing"

    invoke-direct {v0, v2, v3}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->MSOFFICEDRAWING:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 119
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const-string v2, "Form Combo Box"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->FORMCONTROL:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 121
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0x19

    const-string v2, "Excel Note"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 124
    new-instance v0, Ljxl/biff/drawing/ObjRecord$ObjType;

    const/16 v1, 0xff

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord$ObjType;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/biff/drawing/ObjRecord;->UNKNOWN:Ljxl/biff/drawing/ObjRecord$ObjType;

    return-void
.end method

.method constructor <init>(ILjxl/biff/drawing/ObjRecord$ObjType;)V
    .locals 1
    .param p1, "objId"    # I
    .param p2, "t"    # Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 163
    sget-object v0, Ljxl/biff/Type;->OBJ:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 164
    iput p1, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    .line 165
    iput-object p2, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 166
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 5
    .param p1, "t"    # Ljxl/read/biff/Record;

    .line 141
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 142
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    .line 143
    .local v0, "data":[B
    const/4 v1, 0x4

    aget-byte v1, v0, v1

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    .line 144
    .local v1, "objtype":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljxl/biff/drawing/ObjRecord;->read:Z

    .line 145
    invoke-static {v1}, Ljxl/biff/drawing/ObjRecord$ObjType;->getType(I)Ljxl/biff/drawing/ObjRecord$ObjType;

    move-result-object v2

    iput-object v2, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    .line 147
    sget-object v3, Ljxl/biff/drawing/ObjRecord;->UNKNOWN:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v2, v3, :cond_0

    .line 149
    sget-object v2, Ljxl/biff/drawing/ObjRecord;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown object type code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 152
    :cond_0
    const/4 v2, 0x6

    aget-byte v2, v0, v2

    const/4 v3, 0x7

    aget-byte v3, v0, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    .line 153
    return-void
.end method

.method private getComboBoxData()[B
    .locals 8

    .line 324
    const/16 v0, 0x46

    .line 327
    .local v0, "dataLength":I
    const/4 v1, 0x0

    .line 328
    .local v1, "pos":I
    new-array v2, v0, [B

    .line 332
    .local v2, "data":[B
    const/16 v3, 0x15

    invoke-static {v3, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 335
    add-int/lit8 v3, v1, 0x2

    const/16 v4, 0x12

    invoke-static {v4, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 338
    iget-object v3, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    iget v3, v3, Ljxl/biff/drawing/ObjRecord$ObjType;->value:I

    add-int/lit8 v4, v1, 0x4

    invoke-static {v3, v2, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 341
    iget v3, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    add-int/lit8 v4, v1, 0x6

    invoke-static {v3, v2, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 344
    add-int/lit8 v3, v1, 0x8

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 345
    add-int/lit8 v1, v1, 0x16

    .line 349
    const/16 v3, 0xc

    invoke-static {v3, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 352
    add-int/lit8 v3, v1, 0x2

    const/16 v5, 0x14

    invoke-static {v5, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 355
    add-int/lit8 v3, v1, 0xe

    const/4 v5, 0x1

    aput-byte v5, v2, v3

    .line 356
    add-int/lit8 v3, v1, 0x10

    const/4 v6, 0x4

    aput-byte v6, v2, v3

    .line 357
    add-int/lit8 v3, v1, 0x14

    const/16 v7, 0x10

    aput-byte v7, v2, v3

    .line 358
    add-int/lit8 v3, v1, 0x18

    const/16 v7, 0x13

    aput-byte v7, v2, v3

    .line 359
    add-int/lit8 v3, v1, 0x1a

    const/16 v7, -0x12

    aput-byte v7, v2, v3

    .line 360
    add-int/lit8 v3, v1, 0x1b

    const/16 v7, 0x1f

    aput-byte v7, v2, v3

    .line 361
    add-int/lit8 v3, v1, 0x1e

    aput-byte v6, v2, v3

    .line 362
    add-int/lit8 v3, v1, 0x22

    aput-byte v5, v2, v3

    .line 363
    add-int/lit8 v3, v1, 0x23

    const/4 v5, 0x6

    aput-byte v5, v2, v3

    .line 364
    add-int/lit8 v3, v1, 0x26

    const/4 v5, 0x2

    aput-byte v5, v2, v3

    .line 365
    add-int/lit8 v3, v1, 0x28

    const/16 v5, 0x8

    aput-byte v5, v2, v3

    .line 366
    add-int/lit8 v3, v1, 0x2a

    const/16 v5, 0x40

    aput-byte v5, v2, v3

    .line 368
    add-int/lit8 v1, v1, 0x2c

    .line 372
    invoke-static {v4, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 375
    add-int/lit8 v3, v1, 0x2

    invoke-static {v4, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 378
    add-int/2addr v1, v6

    .line 380
    return-object v2
.end method

.method private getNoteData()[B
    .locals 5

    .line 271
    const/16 v0, 0x34

    .line 274
    .local v0, "dataLength":I
    const/4 v1, 0x0

    .line 275
    .local v1, "pos":I
    new-array v2, v0, [B

    .line 279
    .local v2, "data":[B
    const/16 v3, 0x15

    invoke-static {v3, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 282
    add-int/lit8 v3, v1, 0x2

    const/16 v4, 0x12

    invoke-static {v4, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 285
    iget-object v3, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    iget v3, v3, Ljxl/biff/drawing/ObjRecord$ObjType;->value:I

    add-int/lit8 v4, v1, 0x4

    invoke-static {v3, v2, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 288
    iget v3, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    add-int/lit8 v4, v1, 0x6

    invoke-static {v3, v2, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 291
    add-int/lit8 v3, v1, 0x8

    const/16 v4, 0x4011

    invoke-static {v4, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 292
    const/16 v3, 0x16

    add-int/2addr v1, v3

    .line 296
    const/16 v4, 0xd

    invoke-static {v4, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 299
    add-int/lit8 v4, v1, 0x2

    invoke-static {v3, v2, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 302
    add-int/lit8 v1, v1, 0x1a

    .line 306
    const/4 v3, 0x0

    invoke-static {v3, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 309
    add-int/lit8 v4, v1, 0x2

    invoke-static {v3, v2, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 312
    add-int/lit8 v1, v1, 0x4

    .line 314
    return-object v2
.end method

.method private getPictureData()[B
    .locals 6

    .line 206
    const/16 v0, 0x26

    .line 210
    .local v0, "dataLength":I
    const/4 v1, 0x0

    .line 211
    .local v1, "pos":I
    new-array v2, v0, [B

    .line 215
    .local v2, "data":[B
    const/16 v3, 0x15

    invoke-static {v3, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 218
    add-int/lit8 v3, v1, 0x2

    const/16 v4, 0x12

    invoke-static {v4, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 221
    iget-object v3, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    iget v3, v3, Ljxl/biff/drawing/ObjRecord$ObjType;->value:I

    add-int/lit8 v4, v1, 0x4

    invoke-static {v3, v2, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 224
    iget v3, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    add-int/lit8 v4, v1, 0x6

    invoke-static {v3, v2, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 227
    add-int/lit8 v3, v1, 0x8

    const/16 v4, 0x6011

    invoke-static {v4, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 228
    add-int/lit8 v1, v1, 0x16

    .line 232
    const/4 v3, 0x7

    invoke-static {v3, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 235
    add-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    invoke-static {v4, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 238
    add-int/lit8 v3, v1, 0x4

    const v5, 0xffff

    invoke-static {v5, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 239
    add-int/lit8 v1, v1, 0x6

    .line 243
    const/16 v3, 0x8

    invoke-static {v3, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 246
    add-int/lit8 v3, v1, 0x2

    invoke-static {v4, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 249
    add-int/lit8 v3, v1, 0x4

    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 250
    add-int/lit8 v1, v1, 0x6

    .line 253
    const/4 v3, 0x0

    invoke-static {v3, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 256
    add-int/lit8 v4, v1, 0x2

    invoke-static {v3, v2, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 259
    add-int/lit8 v1, v1, 0x4

    .line 261
    return-object v2
.end method


# virtual methods
.method public getData()[B
    .locals 2

    .line 175
    iget-boolean v0, p0, Ljxl/biff/drawing/ObjRecord;->read:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Ljxl/biff/drawing/ObjRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-eq v0, v1, :cond_4

    sget-object v1, Ljxl/biff/drawing/ObjRecord;->CHART:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    sget-object v1, Ljxl/biff/drawing/ObjRecord;->EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v0, v1, :cond_2

    .line 186
    invoke-direct {p0}, Ljxl/biff/drawing/ObjRecord;->getNoteData()[B

    move-result-object v0

    return-object v0

    .line 188
    :cond_2
    sget-object v1, Ljxl/biff/drawing/ObjRecord;->COMBOBOX:Ljxl/biff/drawing/ObjRecord$ObjType;

    if-ne v0, v1, :cond_3

    .line 190
    invoke-direct {p0}, Ljxl/biff/drawing/ObjRecord;->getComboBoxData()[B

    move-result-object v0

    return-object v0

    .line 194
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_4
    :goto_0
    invoke-direct {p0}, Ljxl/biff/drawing/ObjRecord;->getPictureData()[B

    move-result-object v0

    return-object v0
.end method

.method public getObjectId()I
    .locals 1

    .line 411
    iget v0, p0, Ljxl/biff/drawing/ObjRecord;->objectId:I

    return v0
.end method

.method public getRecord()Ljxl/read/biff/Record;
    .locals 1

    .line 391
    invoke-super {p0}, Ljxl/biff/WritableRecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljxl/biff/drawing/ObjRecord$ObjType;
    .locals 1

    .line 401
    iget-object v0, p0, Ljxl/biff/drawing/ObjRecord;->type:Ljxl/biff/drawing/ObjRecord$ObjType;

    return-object v0
.end method
