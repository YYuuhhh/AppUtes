.class public Ljxl/write/WritableHyperlink;
.super Ljxl/write/biff/HyperlinkRecord;
.source "WritableHyperlink.java"

# interfaces
.implements Ljxl/Hyperlink;


# direct methods
.method public constructor <init>(IIIILjava/io/File;)V
    .locals 7
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "lastcol"    # I
    .param p4, "lastrow"    # I
    .param p5, "file"    # Ljava/io/File;

    .line 128
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Ljxl/write/biff/HyperlinkRecord;-><init>(IIIILjava/io/File;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(IIIILjava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "lastcol"    # I
    .param p4, "lastrow"    # I
    .param p5, "file"    # Ljava/io/File;
    .param p6, "desc"    # Ljava/lang/String;

    .line 148
    invoke-direct/range {p0 .. p6}, Ljxl/write/biff/HyperlinkRecord;-><init>(IIIILjava/io/File;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljxl/write/WritableSheet;IIII)V
    .locals 0
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "lastcol"    # I
    .param p4, "lastrow"    # I
    .param p5, "desc"    # Ljava/lang/String;
    .param p6, "sheet"    # Ljxl/write/WritableSheet;
    .param p7, "destcol"    # I
    .param p8, "destrow"    # I
    .param p9, "lastdestcol"    # I
    .param p10, "lastdestrow"    # I

    .line 192
    invoke-direct/range {p0 .. p10}, Ljxl/write/biff/HyperlinkRecord;-><init>(IIIILjava/lang/String;Ljxl/write/WritableSheet;IIII)V

    .line 196
    return-void
.end method

.method public constructor <init>(IIIILjava/net/URL;)V
    .locals 7
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "lastcol"    # I
    .param p4, "lastrow"    # I
    .param p5, "url"    # Ljava/net/URL;

    .line 68
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/net/URL;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(IIIILjava/net/URL;Ljava/lang/String;)V
    .locals 0
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "lastcol"    # I
    .param p4, "lastrow"    # I
    .param p5, "url"    # Ljava/net/URL;
    .param p6, "desc"    # Ljava/lang/String;

    .line 88
    invoke-direct/range {p0 .. p6}, Ljxl/write/biff/HyperlinkRecord;-><init>(IIIILjava/net/URL;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(IILjava/io/File;)V
    .locals 7
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "file"    # Ljava/io/File;

    .line 100
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/io/File;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(IILjava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "file"    # Ljava/io/File;
    .param p4, "desc"    # Ljava/lang/String;

    .line 113
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/io/File;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljxl/write/WritableSheet;II)V
    .locals 11
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "sheet"    # Ljxl/write/WritableSheet;
    .param p5, "destcol"    # I
    .param p6, "destrow"    # I

    .line 166
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/lang/String;Ljxl/write/WritableSheet;IIII)V

    .line 169
    return-void
.end method

.method public constructor <init>(IILjava/net/URL;)V
    .locals 6
    .param p1, "col"    # I
    .param p2, "row"    # I
    .param p3, "url"    # Ljava/net/URL;

    .line 54
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/net/URL;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V
    .locals 0
    .param p1, "h"    # Ljxl/Hyperlink;
    .param p2, "ws"    # Ljxl/write/WritableSheet;

    .line 42
    invoke-direct {p0, p1, p2}, Ljxl/write/biff/HyperlinkRecord;-><init>(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V

    .line 43
    return-void
.end method


# virtual methods
.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .line 225
    invoke-super {p0, p1}, Ljxl/write/biff/HyperlinkRecord;->setContents(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 215
    invoke-super {p0, p1}, Ljxl/write/biff/HyperlinkRecord;->setFile(Ljava/io/File;)V

    .line 216
    return-void
.end method

.method public setLocation(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "sheet"    # Ljxl/write/WritableSheet;
    .param p3, "destcol"    # I
    .param p4, "destrow"    # I
    .param p5, "lastdestcol"    # I
    .param p6, "lastdestrow"    # I

    .line 243
    invoke-super/range {p0 .. p6}, Ljxl/write/biff/HyperlinkRecord;->setLocation(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V

    .line 244
    return-void
.end method

.method public setURL(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .line 205
    invoke-super {p0, p1}, Ljxl/write/biff/HyperlinkRecord;->setURL(Ljava/net/URL;)V

    .line 206
    return-void
.end method
