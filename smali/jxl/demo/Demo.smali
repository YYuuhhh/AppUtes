.class public Ljxl/demo/Demo;
.super Ljava/lang/Object;
.source "Demo.java"


# static fields
.field private static final CSVFormat:I = 0xd

.field private static final XMLFormat:I = 0xe

.field private static logger:Ljxl/common/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Ljxl/demo/Demo;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static displayHelp()V
    .locals 2

    .line 52
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Command format:  Demo [-unicode] [-csv] [-hide] excelfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                 Demo -xml [-format]  excelfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                 Demo -readwrite|-rw excelfile output"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                 Demo -biffdump | -bd | -wa | -write | -formulas | -features | -escher | -escherdg excelfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                 Demo -ps excelfile [property] [output]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                 Demo -version | -logtest | -h | -help"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private static findTest(Ljxl/Workbook;)V
    .locals 6
    .param p0, "w"    # Ljxl/Workbook;

    .line 304
    sget-object v0, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    const-string v1, "Find test"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 306
    const-string v0, "named1"

    invoke-virtual {p0, v0}, Ljxl/Workbook;->findCellByName(Ljava/lang/String;)Ljxl/Cell;

    move-result-object v0

    .line 307
    .local v0, "c":Ljxl/Cell;
    if-eqz v0, :cond_0

    .line 309
    sget-object v1, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "named1 contents:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 312
    :cond_0
    const-string v1, "named2"

    invoke-virtual {p0, v1}, Ljxl/Workbook;->findCellByName(Ljava/lang/String;)Ljxl/Cell;

    move-result-object v0

    .line 313
    const-string v1, "named2 contents:  "

    if-eqz v0, :cond_1

    .line 315
    sget-object v2, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 318
    :cond_1
    const-string v2, "namedrange"

    invoke-virtual {p0, v2}, Ljxl/Workbook;->findCellByName(Ljava/lang/String;)Ljxl/Cell;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_2

    .line 321
    sget-object v3, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 324
    :cond_2
    invoke-virtual {p0, v2}, Ljxl/Workbook;->findByName(Ljava/lang/String;)[Ljxl/Range;

    move-result-object v1

    .line 325
    .local v1, "range":[Ljxl/Range;
    if-eqz v1, :cond_3

    .line 327
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-interface {v3}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    .line 328
    sget-object v3, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "namedrange top left contents:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 330
    aget-object v2, v1, v2

    invoke-interface {v2}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    .line 331
    sget-object v2, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "namedrange bottom right contents:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 334
    :cond_3
    const-string v2, "nonadjacentrange"

    invoke-virtual {p0, v2}, Ljxl/Workbook;->findByName(Ljava/lang/String;)[Ljxl/Range;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_4

    .line 337
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 339
    aget-object v3, v1, v2

    invoke-interface {v3}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    .line 340
    sget-object v3, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nonadjacent top left contents:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 342
    aget-object v3, v1, v2

    invoke-interface {v3}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    .line 343
    sget-object v3, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nonadjacent bottom right contents:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    .end local v2    # "i":I
    :cond_4
    const-string v2, "horizontalnonadjacentrange"

    invoke-virtual {p0, v2}, Ljxl/Workbook;->findByName(Ljava/lang/String;)[Ljxl/Range;

    move-result-object v1

    .line 348
    if-eqz v1, :cond_5

    .line 350
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 352
    aget-object v3, v1, v2

    invoke-interface {v3}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    .line 353
    sget-object v3, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "horizontalnonadjacent top left contents:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 356
    aget-object v3, v1, v2

    invoke-interface {v3}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    .line 357
    sget-object v3, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "horizontalnonadjacent bottom right contents:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 362
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 22
    .param p0, "args"    # [Ljava/lang/String;

    .line 71
    move-object/from16 v1, p0

    array-length v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Ljxl/demo/Demo;->displayHelp()V

    .line 74
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 77
    :cond_0
    const/4 v0, 0x0

    aget-object v3, v1, v0

    const-string v4, "-help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v1, v0

    const-string v4, "-h"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    :cond_1
    invoke-static {}, Ljxl/demo/Demo;->displayHelp()V

    .line 80
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 83
    :cond_2
    aget-object v3, v1, v0

    const-string v4, "-version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljxl/Workbook;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 89
    :cond_3
    aget-object v3, v1, v0

    const-string v4, "-logtest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    sget-object v3, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    const-string v4, "A sample \"debug\" message"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->debug(Ljava/lang/Object;)V

    .line 92
    sget-object v3, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    const-string v4, "A sample \"info\" message"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->info(Ljava/lang/Object;)V

    .line 93
    sget-object v3, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    const-string v4, "A sample \"warning\" message"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 94
    sget-object v3, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    const-string v4, "A sample \"error\" message"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->error(Ljava/lang/Object;)V

    .line 95
    sget-object v3, Ljxl/demo/Demo;->logger:Ljxl/common/Logger;

    const-string v4, "A sample \"fatal\" message"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->fatal(Ljava/lang/Object;)V

    .line 96
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 99
    :cond_4
    const/4 v3, 0x0

    .line 100
    .local v3, "write":Z
    const/4 v4, 0x0

    .line 101
    .local v4, "readwrite":Z
    const/4 v5, 0x0

    .line 102
    .local v5, "formulas":Z
    const/4 v6, 0x0

    .line 103
    .local v6, "biffdump":Z
    const/4 v7, 0x0

    .line 104
    .local v7, "jxlversion":Z
    const/4 v8, 0x0

    .line 105
    .local v8, "propertysets":Z
    const/4 v9, 0x0

    .line 106
    .local v9, "features":Z
    const/4 v10, 0x0

    .line 107
    .local v10, "escher":Z
    const/4 v11, 0x0

    .line 108
    .local v11, "escherdg":Z
    aget-object v12, v1, v0

    .line 109
    .local v12, "file":Ljava/lang/String;
    const/4 v13, 0x0

    .line 110
    .local v13, "outputFile":Ljava/lang/String;
    const/4 v14, 0x0

    .line 112
    .local v14, "propertySet":Ljava/lang/String;
    aget-object v15, v1, v0

    const-string v0, "-write"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    const/4 v3, 0x1

    .line 115
    aget-object v0, v1, v2

    move-object v2, v0

    .end local v12    # "file":Ljava/lang/String;
    .local v0, "file":Ljava/lang/String;
    goto/16 :goto_2

    .line 117
    .end local v0    # "file":Ljava/lang/String;
    .restart local v12    # "file":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    aget-object v15, v1, v0

    const-string v0, "-formulas"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    const/4 v5, 0x1

    .line 120
    aget-object v0, v1, v2

    move-object v2, v0

    .end local v12    # "file":Ljava/lang/String;
    .restart local v0    # "file":Ljava/lang/String;
    goto/16 :goto_2

    .line 122
    .end local v0    # "file":Ljava/lang/String;
    .restart local v12    # "file":Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    aget-object v15, v1, v0

    const-string v0, "-features"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 124
    const/4 v9, 0x1

    .line 125
    aget-object v0, v1, v2

    move-object v2, v0

    .end local v12    # "file":Ljava/lang/String;
    .restart local v0    # "file":Ljava/lang/String;
    goto/16 :goto_2

    .line 127
    .end local v0    # "file":Ljava/lang/String;
    .restart local v12    # "file":Ljava/lang/String;
    :cond_7
    const/4 v0, 0x0

    aget-object v15, v1, v0

    const-string v0, "-escher"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 129
    const/4 v10, 0x1

    .line 130
    aget-object v0, v1, v2

    move-object v2, v0

    .end local v12    # "file":Ljava/lang/String;
    .restart local v0    # "file":Ljava/lang/String;
    goto/16 :goto_2

    .line 132
    .end local v0    # "file":Ljava/lang/String;
    .restart local v12    # "file":Ljava/lang/String;
    :cond_8
    const/4 v0, 0x0

    aget-object v15, v1, v0

    const-string v0, "-escherdg"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 134
    const/4 v11, 0x1

    .line 135
    aget-object v0, v1, v2

    move-object v2, v0

    .end local v12    # "file":Ljava/lang/String;
    .restart local v0    # "file":Ljava/lang/String;
    goto/16 :goto_2

    .line 137
    .end local v0    # "file":Ljava/lang/String;
    .restart local v12    # "file":Ljava/lang/String;
    :cond_9
    const/4 v0, 0x0

    aget-object v15, v1, v0

    const-string v2, "-biffdump"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    aget-object v2, v1, v0

    const-string v15, "-bd"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_1

    .line 142
    :cond_a
    aget-object v2, v1, v0

    const-string v15, "-wa"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 144
    const/4 v7, 0x1

    .line 145
    const/4 v2, 0x1

    aget-object v0, v1, v2

    move-object v2, v0

    .end local v12    # "file":Ljava/lang/String;
    .restart local v0    # "file":Ljava/lang/String;
    goto :goto_2

    .line 147
    .end local v0    # "file":Ljava/lang/String;
    .restart local v12    # "file":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x1

    aget-object v15, v1, v0

    const-string v0, "-ps"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v15, 0x2

    if-eqz v0, :cond_e

    .line 149
    const/4 v8, 0x1

    .line 150
    aget-object v0, v1, v2

    .line 152
    .end local v12    # "file":Ljava/lang/String;
    .restart local v0    # "file":Ljava/lang/String;
    array-length v2, v1

    if-le v2, v15, :cond_c

    .line 154
    aget-object v14, v1, v15

    .line 157
    :cond_c
    array-length v2, v1

    const/4 v12, 0x4

    if-ne v2, v12, :cond_d

    .line 159
    const/4 v2, 0x3

    aget-object v13, v1, v2

    move-object v2, v0

    goto :goto_2

    .line 157
    :cond_d
    move-object v2, v0

    goto :goto_2

    .line 162
    .end local v0    # "file":Ljava/lang/String;
    .restart local v12    # "file":Ljava/lang/String;
    :cond_e
    const/4 v0, 0x0

    aget-object v2, v1, v0

    const-string v15, "-readwrite"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    aget-object v0, v1, v0

    const-string v2, "-rw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    goto :goto_0

    .line 170
    :cond_f
    array-length v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    move-object v2, v0

    .end local v12    # "file":Ljava/lang/String;
    .restart local v0    # "file":Ljava/lang/String;
    goto :goto_2

    .line 162
    .end local v0    # "file":Ljava/lang/String;
    .restart local v12    # "file":Ljava/lang/String;
    :cond_10
    const/4 v2, 0x1

    .line 164
    :goto_0
    const/4 v4, 0x1

    .line 165
    aget-object v0, v1, v2

    .line 166
    .end local v12    # "file":Ljava/lang/String;
    .restart local v0    # "file":Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v13, v1, v12

    move-object v2, v0

    goto :goto_2

    .line 137
    .end local v0    # "file":Ljava/lang/String;
    .restart local v12    # "file":Ljava/lang/String;
    :cond_11
    const/4 v2, 0x1

    .line 139
    :goto_1
    const/4 v6, 0x1

    .line 140
    aget-object v0, v1, v2

    move-object v2, v0

    .line 173
    .end local v12    # "file":Ljava/lang/String;
    .local v2, "file":Ljava/lang/String;
    :goto_2
    const-string v0, "UTF8"

    .line 174
    .local v0, "encoding":Ljava/lang/String;
    const/16 v12, 0xd

    .line 175
    .local v12, "format":I
    const/4 v15, 0x0

    .line 176
    .local v15, "formatInfo":Z
    const/16 v16, 0x0

    .line 178
    .local v16, "hideCells":Z
    if-nez v3, :cond_18

    if-nez v4, :cond_18

    if-nez v5, :cond_18

    if-nez v6, :cond_18

    if-nez v7, :cond_18

    if-nez v8, :cond_18

    if-nez v9, :cond_18

    if-nez v10, :cond_18

    if-nez v11, :cond_18

    .line 188
    const/16 v18, 0x0

    move/from16 v21, v18

    move-object/from16 v18, v0

    move/from16 v0, v21

    .local v0, "i":I
    .local v18, "encoding":Ljava/lang/String;
    :goto_3
    move/from16 v19, v12

    .end local v12    # "format":I
    .local v19, "format":I
    array-length v12, v1

    const/16 v17, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v0, v12, :cond_17

    .line 190
    aget-object v12, v1, v0

    move/from16 v20, v15

    .end local v15    # "formatInfo":Z
    .local v20, "formatInfo":Z
    const-string v15, "-unicode"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 192
    const-string v12, "UnicodeBig"

    move-object/from16 v18, v12

    move/from16 v15, v20

    const/4 v12, 0x1

    .end local v18    # "encoding":Ljava/lang/String;
    .local v12, "encoding":Ljava/lang/String;
    goto :goto_4

    .line 194
    .end local v12    # "encoding":Ljava/lang/String;
    .restart local v18    # "encoding":Ljava/lang/String;
    :cond_12
    aget-object v12, v1, v0

    const-string v15, "-xml"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 196
    const/16 v12, 0xe

    move/from16 v19, v12

    move/from16 v15, v20

    const/4 v12, 0x1

    .end local v19    # "format":I
    .local v12, "format":I
    goto :goto_4

    .line 198
    .end local v12    # "format":I
    .restart local v19    # "format":I
    :cond_13
    aget-object v12, v1, v0

    const-string v15, "-csv"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 200
    const/16 v12, 0xd

    move/from16 v19, v12

    move/from16 v15, v20

    const/4 v12, 0x1

    .end local v19    # "format":I
    .restart local v12    # "format":I
    goto :goto_4

    .line 202
    .end local v12    # "format":I
    .restart local v19    # "format":I
    :cond_14
    aget-object v12, v1, v0

    const-string v15, "-format"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 204
    const/4 v12, 0x1

    move v15, v12

    const/4 v12, 0x1

    .end local v20    # "formatInfo":Z
    .local v12, "formatInfo":Z
    goto :goto_4

    .line 206
    .end local v12    # "formatInfo":Z
    .restart local v20    # "formatInfo":Z
    :cond_15
    aget-object v12, v1, v0

    const-string v15, "-hide"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 208
    const/4 v12, 0x1

    move/from16 v16, v12

    move/from16 v15, v20

    const/4 v12, 0x1

    .end local v16    # "hideCells":Z
    .local v12, "hideCells":Z
    goto :goto_4

    .line 212
    .end local v12    # "hideCells":Z
    .restart local v16    # "hideCells":Z
    :cond_16
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "Command format:  CSV [-unicode] [-xml|-csv] excelfile"

    invoke-virtual {v12, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    move/from16 v15, v20

    .line 188
    .end local v20    # "formatInfo":Z
    .restart local v15    # "formatInfo":Z
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move/from16 v12, v19

    goto :goto_3

    :cond_17
    move/from16 v20, v15

    .end local v15    # "formatInfo":Z
    .restart local v20    # "formatInfo":Z
    move/from16 v1, v16

    move-object/from16 v12, v18

    move/from16 v15, v19

    move/from16 v16, v20

    goto :goto_5

    .line 221
    .end local v18    # "encoding":Ljava/lang/String;
    .end local v19    # "format":I
    .end local v20    # "formatInfo":Z
    .local v0, "encoding":Ljava/lang/String;
    .local v12, "format":I
    .restart local v15    # "formatInfo":Z
    :cond_18
    move/from16 v1, v16

    move/from16 v16, v15

    move v15, v12

    move-object v12, v0

    .end local v0    # "encoding":Ljava/lang/String;
    .local v1, "hideCells":Z
    .local v12, "encoding":Ljava/lang/String;
    .local v15, "format":I
    .local v16, "formatInfo":Z
    :goto_5
    if-eqz v3, :cond_19

    .line 223
    :try_start_0
    new-instance v0, Ljxl/demo/Write;

    invoke-direct {v0, v2}, Ljxl/demo/Write;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "w":Ljxl/demo/Write;
    invoke-virtual {v0}, Ljxl/demo/Write;->write()V

    .line 225
    .end local v0    # "w":Ljxl/demo/Write;
    move/from16 v19, v1

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v1, v16

    goto/16 :goto_7

    .line 292
    :catchall_0
    move-exception v0

    move/from16 v19, v1

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v1, v16

    goto/16 :goto_8

    .line 226
    :cond_19
    if-eqz v4, :cond_1a

    .line 228
    new-instance v0, Ljxl/demo/ReadWrite;

    invoke-direct {v0, v2, v13}, Ljxl/demo/ReadWrite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v0, "rw":Ljxl/demo/ReadWrite;
    invoke-virtual {v0}, Ljxl/demo/ReadWrite;->readWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v0    # "rw":Ljxl/demo/ReadWrite;
    move/from16 v19, v1

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v1, v16

    goto/16 :goto_7

    .line 231
    :cond_1a
    if-eqz v5, :cond_1b

    .line 233
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 234
    .local v0, "w":Ljxl/Workbook;
    move/from16 v17, v3

    .end local v3    # "write":Z
    .local v17, "write":Z
    :try_start_2
    new-instance v3, Ljxl/demo/Formulas;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v18, v4

    .end local v4    # "readwrite":Z
    .local v18, "readwrite":Z
    :try_start_3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v0, v4, v12}, Ljxl/demo/Formulas;-><init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 235
    .local v3, "f":Ljxl/demo/Formulas;
    invoke-virtual {v0}, Ljxl/Workbook;->close()V

    .line 236
    .end local v0    # "w":Ljxl/Workbook;
    .end local v3    # "f":Ljxl/demo/Formulas;
    move/from16 v19, v1

    move/from16 v1, v16

    goto/16 :goto_7

    .line 292
    .end local v18    # "readwrite":Z
    .restart local v4    # "readwrite":Z
    :catchall_1
    move-exception v0

    move/from16 v18, v4

    move/from16 v19, v1

    move/from16 v1, v16

    .end local v4    # "readwrite":Z
    .restart local v18    # "readwrite":Z
    goto/16 :goto_8

    .end local v17    # "write":Z
    .end local v18    # "readwrite":Z
    .local v3, "write":Z
    .restart local v4    # "readwrite":Z
    :catchall_2
    move-exception v0

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v1

    move/from16 v1, v16

    .end local v3    # "write":Z
    .end local v4    # "readwrite":Z
    .restart local v17    # "write":Z
    .restart local v18    # "readwrite":Z
    goto/16 :goto_8

    .line 237
    .end local v17    # "write":Z
    .end local v18    # "readwrite":Z
    .restart local v3    # "write":Z
    .restart local v4    # "readwrite":Z
    :cond_1b
    move/from16 v17, v3

    move/from16 v18, v4

    .end local v3    # "write":Z
    .end local v4    # "readwrite":Z
    .restart local v17    # "write":Z
    .restart local v18    # "readwrite":Z
    if-eqz v9, :cond_1c

    .line 239
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object v0

    .line 240
    .restart local v0    # "w":Ljxl/Workbook;
    new-instance v3, Ljxl/demo/Features;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v0, v4, v12}, Ljxl/demo/Features;-><init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 241
    .local v3, "f":Ljxl/demo/Features;
    invoke-virtual {v0}, Ljxl/Workbook;->close()V

    .line 242
    .end local v0    # "w":Ljxl/Workbook;
    .end local v3    # "f":Ljxl/demo/Features;
    move/from16 v19, v1

    move/from16 v1, v16

    goto/16 :goto_7

    .line 292
    :catchall_3
    move-exception v0

    move/from16 v19, v1

    move/from16 v1, v16

    goto/16 :goto_8

    .line 243
    :cond_1c
    if-eqz v10, :cond_1d

    .line 245
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object v0

    .line 246
    .restart local v0    # "w":Ljxl/Workbook;
    new-instance v3, Ljxl/demo/Escher;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v0, v4, v12}, Ljxl/demo/Escher;-><init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 247
    .local v3, "f":Ljxl/demo/Escher;
    invoke-virtual {v0}, Ljxl/Workbook;->close()V

    .line 248
    .end local v0    # "w":Ljxl/Workbook;
    .end local v3    # "f":Ljxl/demo/Escher;
    move/from16 v19, v1

    move/from16 v1, v16

    goto/16 :goto_7

    .line 249
    :cond_1d
    if-eqz v11, :cond_1e

    .line 251
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object v0

    .line 252
    .restart local v0    # "w":Ljxl/Workbook;
    new-instance v3, Ljxl/demo/EscherDrawingGroup;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v0, v4, v12}, Ljxl/demo/EscherDrawingGroup;-><init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 253
    .local v3, "f":Ljxl/demo/EscherDrawingGroup;
    invoke-virtual {v0}, Ljxl/Workbook;->close()V

    .line 254
    .end local v0    # "w":Ljxl/Workbook;
    .end local v3    # "f":Ljxl/demo/EscherDrawingGroup;
    move/from16 v19, v1

    move/from16 v1, v16

    goto/16 :goto_7

    .line 255
    :cond_1e
    if-eqz v6, :cond_1f

    .line 257
    new-instance v0, Ljxl/demo/BiffDump;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v3, v4}, Ljxl/demo/BiffDump;-><init>(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 258
    move/from16 v19, v1

    move/from16 v1, v16

    goto :goto_7

    .line 259
    :cond_1f
    if-eqz v7, :cond_20

    .line 261
    new-instance v0, Ljxl/demo/WriteAccess;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljxl/demo/WriteAccess;-><init>(Ljava/io/File;)V

    .line 262
    move/from16 v19, v1

    move/from16 v1, v16

    goto :goto_7

    .line 263
    :cond_20
    if-eqz v8, :cond_22

    .line 265
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 266
    .local v0, "os":Ljava/io/OutputStream;
    if-eqz v13, :cond_21

    .line 268
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 270
    :cond_21
    new-instance v3, Ljxl/demo/PropertySetsReader;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v14, v0}, Ljxl/demo/PropertySetsReader;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 273
    .end local v0    # "os":Ljava/io/OutputStream;
    move/from16 v19, v1

    move/from16 v1, v16

    goto :goto_7

    .line 276
    :cond_22
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 280
    .local v0, "w":Ljxl/Workbook;
    const/16 v3, 0xd

    if-ne v15, v3, :cond_23

    .line 282
    :try_start_5
    new-instance v3, Ljxl/demo/CSV;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v0, v4, v12, v1}, Ljxl/demo/CSV;-><init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 283
    move/from16 v19, v1

    move/from16 v1, v16

    goto :goto_6

    .line 284
    :cond_23
    const/16 v3, 0xe

    if-ne v15, v3, :cond_24

    .line 286
    :try_start_6
    new-instance v3, Ljxl/demo/XML;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move/from16 v19, v1

    move/from16 v1, v16

    .end local v16    # "formatInfo":Z
    .local v1, "formatInfo":Z
    .local v19, "hideCells":Z
    :try_start_7
    invoke-direct {v3, v0, v4, v12, v1}, Ljxl/demo/XML;-><init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    goto :goto_6

    .line 284
    .end local v19    # "hideCells":Z
    .local v1, "hideCells":Z
    .restart local v16    # "formatInfo":Z
    :cond_24
    move/from16 v19, v1

    move/from16 v1, v16

    .line 289
    .end local v16    # "formatInfo":Z
    .local v1, "formatInfo":Z
    .restart local v19    # "hideCells":Z
    :goto_6
    invoke-virtual {v0}, Ljxl/Workbook;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 296
    .end local v0    # "w":Ljxl/Workbook;
    :goto_7
    goto :goto_9

    .line 292
    :catchall_4
    move-exception v0

    goto :goto_8

    .end local v19    # "hideCells":Z
    .local v1, "hideCells":Z
    .restart local v16    # "formatInfo":Z
    :catchall_5
    move-exception v0

    move/from16 v19, v1

    move/from16 v1, v16

    .line 294
    .end local v16    # "formatInfo":Z
    .local v0, "t":Ljava/lang/Throwable;
    .local v1, "formatInfo":Z
    .restart local v19    # "hideCells":Z
    :goto_8
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 297
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_9
    return-void
.end method
