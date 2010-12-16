.class public Lorg/kxml2/wap/WbxmlParser;
.super Ljava/lang/Object;
.source "WbxmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# static fields
.field static final HEX_DIGITS:Ljava/lang/String; = "0123456789abcdef"

.field private static final ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field public static final WAP_EXTENSION:I = 0x40


# instance fields
.field private ATTR_START_TABLE:I

.field private ATTR_VALUE_TABLE:I

.field private TAG_TABLE:I

.field private attrStartTable:[Ljava/lang/String;

.field private attrValueTable:[Ljava/lang/String;

.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private cacheStringTable:Ljava/util/Hashtable;

.field private degenerated:Z

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private in:Ljava/io/InputStream;

.field private isWhitespace:Z

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nextId:I

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private processNsp:Z

.field private publicIdentifierId:I

.field private stringTable:[B

.field private tables:Ljava/util/Vector;

.field private tagTable:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I

.field private version:I

.field private wapCode:I

.field private wapExtensionData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->TAG_TABLE:I

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_START_TABLE:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_VALUE_TABLE:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    .line 65
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    .line 70
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 71
    const/4 v0, -0x2

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    .line 35
    return-void
.end method

.method private final adjustNsp()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, any:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    if-lt v5, v8, :cond_4

    .line 541
    if-eqz v0, :cond_0

    .line 542
    iget v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    const/4 v9, 0x4

    sub-int v5, v8, v9

    .line 543
    :goto_1
    if-gez v5, :cond_9

    .line 589
    :cond_0
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 591
    .local v4, cut:I
    if-nez v4, :cond_f

    .line 592
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "illegal tag name: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 598
    :cond_1
    :goto_2
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    .line 600
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 601
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 602
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "undefined prefix: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 603
    :cond_2
    const-string v8, ""

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    .line 606
    :cond_3
    return v0

    .line 500
    .end local v4           #cut:I
    :cond_4
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 501
    .local v1, attrName:Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 504
    .restart local v4       #cut:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_6

    .line 505
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 506
    .local v7, prefix:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 513
    :goto_3
    const-string v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 514
    const/4 v0, 0x1

    .line 497
    .end local v7           #prefix:Ljava/lang/String;
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 507
    :cond_6
    const-string v8, "xmlns"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 508
    move-object v7, v1

    .line 509
    .restart local v7       #prefix:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_3

    .line 516
    :cond_7
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    iget v9, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    aget v10, v8, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v8, v9

    shl-int/lit8 v6, v10, 0x1

    .line 518
    .local v6, j:I
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    invoke-direct {p0, v8, v9}, Lorg/kxml2/wap/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    .line 519
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    aput-object v1, v8, v6

    .line 520
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v5, 0x3

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 522
    if-eqz v1, :cond_8

    .line 523
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x3

    aget-object v8, v8, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 524
    const-string v8, "illegal empty namespace"

    invoke-direct {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 531
    :cond_8
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 532
    add-int/lit8 v9, v5, 0x4

    .line 533
    iget-object v10, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 535
    iget v11, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iput v11, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v5

    .line 530
    invoke-static {v8, v9, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    add-int/lit8 v5, v5, -0x4

    goto :goto_4

    .line 546
    .end local v1           #attrName:Ljava/lang/String;
    .end local v4           #cut:I
    .end local v6           #j:I
    .end local v7           #prefix:Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 547
    .restart local v1       #attrName:Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 549
    .restart local v4       #cut:I
    if-nez v4, :cond_a

    .line 550
    new-instance v8, Ljava/lang/RuntimeException;

    .line 551
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "illegal attribute name: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 553
    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 554
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 551
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 550
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 556
    :cond_a
    const/4 v8, -0x1

    if-eq v4, v8, :cond_c

    .line 558
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, attrPrefix:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-virtual {p0, v3}, Lorg/kxml2/wap/WbxmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, attrNs:Ljava/lang/String;
    if-nez v2, :cond_b

    .line 565
    new-instance v8, Ljava/lang/RuntimeException;

    .line 566
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Undefined Prefix: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 568
    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 569
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 566
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 565
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 571
    :cond_b
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    aput-object v2, v8, v5

    .line 572
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    aput-object v3, v8, v9

    .line 573
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aput-object v1, v8, v9

    .line 575
    iget v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    const/4 v9, 0x4

    sub-int v6, v8, v9

    .line 576
    .restart local v6       #j:I
    :goto_5
    if-gt v6, v5, :cond_d

    .line 544
    .end local v2           #attrNs:Ljava/lang/String;
    .end local v3           #attrPrefix:Ljava/lang/String;
    .end local v6           #j:I
    :cond_c
    add-int/lit8 v5, v5, -0x4

    goto/16 :goto_1

    .line 578
    .restart local v2       #attrNs:Ljava/lang/String;
    .restart local v3       #attrPrefix:Ljava/lang/String;
    .restart local v6       #j:I
    :cond_d
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 579
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 581
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Duplicate Attribute: {"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 583
    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 584
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 581
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 580
    invoke-direct {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 577
    :cond_e
    add-int/lit8 v6, v6, -0x4

    goto :goto_5

    .line 593
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrNs:Ljava/lang/String;
    .end local v3           #attrPrefix:Ljava/lang/String;
    .end local v6           #j:I
    :cond_f
    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 594
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    .line 595
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private final ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .parameter "arr"
    .parameter "required"

    .prologue
    const/4 v2, 0x0

    .line 952
    array-length v1, p1

    if-lt v1, p2, :cond_0

    move-object v1, p1

    .line 956
    :goto_0
    return-object v1

    .line 954
    :cond_0
    add-int/lit8 v1, p2, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 955
    .local v0, bigger:[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 956
    goto :goto_0
.end method

.method private final exception(Ljava/lang/String;)V
    .locals 2
    .parameter "desc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 622
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final nextImpl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 645
    iget v3, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ne v3, v5, :cond_0

    .line 646
    iget v3, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    .line 649
    :cond_0
    iget-boolean v3, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    if-eqz v3, :cond_1

    .line 650
    iput v5, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 651
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    .line 730
    :goto_0
    return-void

    .line 655
    :cond_1
    iput-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    .line 656
    iput-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    .line 657
    iput-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    .line 659
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->peekId()I

    move-result v1

    .line 660
    .local v1, id:I
    :goto_1
    if-eqz v1, :cond_2

    .line 665
    iput v7, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    .line 667
    sparse-switch v1, :sswitch_data_0

    .line 724
    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->parseElement(I)V

    goto :goto_0

    .line 661
    :cond_2
    iput v7, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    .line 662
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    invoke-direct {p0, v3, v4}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    .line 663
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->peekId()I

    move-result v1

    goto :goto_1

    .line 669
    :sswitch_0
    iput v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    goto :goto_0

    .line 673
    :sswitch_1
    iget v3, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    sub-int/2addr v3, v4

    shl-int/lit8 v2, v3, 0x2

    .line 675
    .local v2, sp:I
    iput v5, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 676
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    .line 677
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    .line 678
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x2

    aget-object v3, v3, v4

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 683
    .end local v2           #sp:I
    :sswitch_2
    const/4 v3, 0x6

    iput v3, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 684
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v3

    int-to-char v0, v3

    .line 685
    .local v0, c:C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 692
    .end local v0           #c:C
    :sswitch_3
    iput v8, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 693
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    goto :goto_0

    .line 707
    :sswitch_4
    const/16 v3, 0x40

    iput v3, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 708
    iput v1, p0, Lorg/kxml2/wap/WbxmlParser;->wapCode:I

    .line 709
    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->parseWapExtension(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->wapExtensionData:Ljava/lang/Object;

    goto/16 :goto_0

    .line 713
    :sswitch_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PI curr. not supp."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 718
    :sswitch_6
    iput v8, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 719
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 667
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x40 -> :sswitch_4
        0x41 -> :sswitch_4
        0x42 -> :sswitch_4
        0x43 -> :sswitch_5
        0x80 -> :sswitch_4
        0x81 -> :sswitch_4
        0x82 -> :sswitch_4
        0x83 -> :sswitch_6
        0xc0 -> :sswitch_4
        0xc1 -> :sswitch_4
        0xc2 -> :sswitch_4
        0xc3 -> :sswitch_4
    .end sparse-switch
.end method

.method private peekId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 857
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    .line 859
    :cond_0
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    return v0
.end method

.method private selectPage(IZ)V
    .locals 3
    .parameter "nr"
    .parameter "tags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 638
    :goto_0
    return-void

    .line 629
    :cond_0
    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Code Page "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " undefined!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 632
    :cond_1
    if-eqz p2, :cond_2

    .line 633
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->TAG_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tagTable:[Ljava/lang/String;

    goto :goto_0

    .line 635
    :cond_2
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_START_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attrStartTable:[Ljava/lang/String;

    .line 636
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_VALUE_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attrValueTable:[Ljava/lang/String;

    goto :goto_0
.end method

.method private final setTable(II[Ljava/lang/String;)V
    .locals 2
    .parameter "page"
    .parameter "type"
    .parameter "table"

    .prologue
    .line 610
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    if-eqz v0, :cond_1

    .line 611
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setXxxTable must be called before setInput!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 613
    :cond_1
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, 0x3

    if-lt v0, v1, :cond_0

    .line 616
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    invoke-virtual {v0, p3, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 617
    return-void
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "entity"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 114
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 284
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 278
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 280
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 290
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 270
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 296
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 305
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v1, v1, 0x2

    const/4 v2, 0x4

    sub-int v0, v1, v2

    .line 306
    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 314
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 308
    :cond_0
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    if-eqz p1, :cond_1

    .line 310
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    :cond_1
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    goto :goto_1

    .line 307
    :cond_2
    add-int/lit8 v0, v0, -0x4

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 318
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"

    .prologue
    .line 96
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->processNsp:Z

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "prefix"

    .prologue
    .line 136
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 150
    :goto_0
    return-object v1

    .line 138
    :cond_0
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    .line 141
    :cond_1
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    sub-int v0, v1, v2

    .line 142
    .local v0, i:I
    :goto_1
    if-gez v0, :cond_2

    .line 150
    const/4 v1, 0x0

    goto :goto_0

    .line 144
    :cond_2
    if-nez p1, :cond_3

    .line 145
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    .line 146
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 143
    :cond_4
    add-int/lit8 v0, v0, -0x2

    goto :goto_1
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .parameter "depth"

    .prologue
    .line 121
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    if-le p1, v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 127
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 131
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v6, 0x3

    const-string v10, "{"

    const-string v9, ":"

    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    .line 161
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    sget-object v5, Lorg/kxml2/wap/WbxmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    sget-object v4, Lorg/kxml2/wap/WbxmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    aget-object v4, v4, v5

    .line 160
    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ne v4, v6, :cond_8

    .line 165
    :cond_0
    iget-boolean v4, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    if-eqz v4, :cond_1

    .line 166
    const-string v4, "(empty) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    :cond_1
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ne v4, v6, :cond_2

    .line 169
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    :cond_2
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{"

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_3
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v1, v4, 0x2

    .line 176
    .local v1, cnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v1, :cond_6

    .line 195
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 208
    .end local v1           #cnt:I
    .end local v2           #i:I
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 161
    .end local v0           #buf:Ljava/lang/StringBuffer;
    :cond_5
    const-string v4, "unknown"

    goto :goto_0

    .line 177
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v1       #cnt:I
    .restart local v2       #i:I
    :cond_6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 178
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_7

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{"

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 182
    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 183
    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 184
    add-int/lit8 v6, v2, 0x1

    .line 183
    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 185
    const-string v5, ":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 188
    add-int/lit8 v6, v2, 0x2

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 190
    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 191
    add-int/lit8 v6, v2, 0x3

    .line 190
    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 192
    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 196
    .end local v1           #cnt:I
    .end local v2           #i:I
    :cond_8
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_4

    .line 197
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    .line 198
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 199
    :cond_9
    iget-boolean v4, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    if-eqz v4, :cond_a

    .line 200
    const-string v4, "(whitespace)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 202
    :cond_a
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_b

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "property"

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 6
    .parameter "poslen"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 233
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 234
    aput v3, p1, v3

    .line 235
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, p1, v5

    .line 236
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 237
    .local v0, buf:[C
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    iget-object v2, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    move-object v1, v0

    .line 243
    .end local v0           #buf:[C
    :goto_0
    return-object v1

    .line 241
    :cond_0
    aput v4, p1, v3

    .line 242
    aput v4, p1, v5

    .line 243
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWapCode()I
    .locals 1

    .prologue
    .line 1070
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->wapCode:I

    return v0
.end method

.method public getWapExtensionData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->wapExtensionData:Ljava/lang/Object;

    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 260
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 261
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 262
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    return v0
.end method

.method public isWhitespace()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 221
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 222
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 223
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 224
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 225
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    return v0
.end method

.method public next()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 327
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    .line 328
    const/16 v0, 0x270f

    .line 332
    .local v0, minType:I
    :cond_0
    :sswitch_0
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    .line 334
    .local v1, save:Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->nextImpl()V

    .line 336
    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ge v2, v0, :cond_1

    .line 337
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 339
    :cond_1
    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 341
    if-lt v0, v4, :cond_3

    .line 343
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    if-nez v2, :cond_5

    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    .line 345
    :cond_2
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->peekId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 360
    :cond_3
    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 362
    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-le v2, v4, :cond_4

    .line 363
    iput v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 365
    :cond_4
    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    return v2

    .line 343
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 345
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x44 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0xc4 -> :sswitch_0
    .end sparse-switch
.end method

.method public nextTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->next()I

    .line 380
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->next()I

    .line 383
    :cond_0
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 384
    const-string v0, "unexpected type"

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 386
    :cond_1
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 392
    const-string v1, "precondition: START_TAG"

    invoke-direct {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 394
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->next()I

    .line 398
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 399
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->next()I

    .line 404
    :goto_0
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 405
    const-string v1, "END_TAG expected"

    invoke-direct {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 407
    :cond_1
    return-object v0

    .line 402
    .end local v0           #result:Ljava/lang/String;
    :cond_2
    const-string v0, ""

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    .line 372
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->nextImpl()V

    .line 373
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    return v0
.end method

.method parseElement(I)V
    .locals 9
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 903
    const/4 v4, 0x2

    iput v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 904
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->tagTable:[Ljava/lang/String;

    and-int/lit8 v5, p1, 0x3f

    invoke-virtual {p0, v4, v5}, Lorg/kxml2/wap/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    .line 906
    iput v7, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    .line 907
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_0

    .line 908
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readAttr()V

    .line 911
    :cond_0
    and-int/lit8 v4, p1, 0x40

    if-nez v4, :cond_2

    move v4, v8

    :goto_0
    iput-boolean v4, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    .line 913
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    shl-int/lit8 v3, v4, 0x2

    .line 917
    .local v3, sp:I
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x4

    invoke-direct {p0, v4, v5}, Lorg/kxml2/wap/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    .line 918
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x3

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 920
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 921
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    add-int/lit8 v4, v4, 0x4

    new-array v0, v4, [I

    .line 922
    .local v0, bigger:[I
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    array-length v5, v5

    invoke-static {v4, v7, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 923
    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    .line 926
    .end local v0           #bigger:[I
    :cond_1
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    iget v5, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    iget v7, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    sub-int/2addr v7, v8

    aget v6, v6, v7

    aput v6, v4, v5

    .line 928
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    sub-int v1, v4, v8

    .local v1, i:I
    :goto_1
    if-gtz v1, :cond_3

    .line 938
    iget-boolean v4, p0, Lorg/kxml2/wap/WbxmlParser;->processNsp:Z

    if-eqz v4, :cond_6

    .line 939
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->adjustNsp()Z

    .line 943
    :goto_2
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 944
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 945
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 947
    return-void

    .end local v1           #i:I
    .end local v3           #sp:I
    :cond_2
    move v4, v7

    .line 911
    goto :goto_0

    .line 929
    .restart local v1       #i:I
    .restart local v3       #sp:I
    :cond_3
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-lt v2, v1, :cond_4

    .line 928
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 930
    :cond_4
    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 931
    invoke-virtual {p0, v2}, Lorg/kxml2/wap/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 933
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Duplicate Attribute: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 933
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 932
    invoke-direct {p0, v4}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 929
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 941
    .end local v2           #j:I
    :cond_6
    const-string v4, ""

    iput-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    goto :goto_2
.end method

.method public parseWapExtension(I)Ljava/lang/Object;
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 738
    sparse-switch p1, :sswitch_data_0

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "illegal id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    move-object v2, v4

    .line 768
    :goto_0
    return-object v2

    .line 742
    :sswitch_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 747
    :sswitch_1
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :sswitch_2
    move-object v2, v4

    .line 752
    goto :goto_0

    .line 755
    :sswitch_3
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v1

    .line 756
    .local v1, count:I
    new-array v0, v1, [B

    .line 758
    .local v0, buf:[B
    :goto_1
    if-gtz v1, :cond_0

    move-object v2, v0

    .line 762
    goto :goto_0

    .line 759
    :cond_0
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 738
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x41 -> :sswitch_0
        0x42 -> :sswitch_0
        0x80 -> :sswitch_1
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_2
        0xc2 -> :sswitch_2
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method public readAttr()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x80

    const/4 v8, 0x0

    .line 774
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    .line 775
    .local v3, id:I
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .line 777
    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 853
    return-void

    .line 780
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v6

    invoke-direct {p0, v6, v8}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    .line 781
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    .line 779
    :cond_1
    if-eqz v3, :cond_0

    .line 784
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attrStartTable:[Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Lorg/kxml2/wap/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 787
    .local v4, name:Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 789
    .local v0, cut:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    .line 790
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 797
    .local v5, value:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    .line 798
    :goto_2
    if-gt v3, v9, :cond_5

    .line 799
    if-eqz v3, :cond_5

    .line 800
    const/4 v6, 0x2

    if-eq v3, v6, :cond_5

    .line 801
    const/4 v6, 0x3

    if-eq v3, v6, :cond_5

    .line 802
    const/16 v6, 0x83

    if-eq v3, v6, :cond_5

    .line 803
    const/16 v6, 0x40

    if-lt v3, v6, :cond_2

    const/16 v6, 0x42

    if-le v3, v6, :cond_5

    .line 804
    :cond_2
    if-lt v3, v9, :cond_3

    const/16 v6, 0x82

    if-le v3, v6, :cond_5

    .line 844
    :cond_3
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v2, 0x4

    invoke-direct {p0, v6, v7}, Lorg/kxml2/wap/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 846
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    const-string v7, ""

    aput-object v7, v6, v2

    .line 847
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    const/4 v7, 0x0

    aput-object v7, v6, v1

    .line 848
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-object v4, v6, v2

    .line 849
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 851
    iget v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    goto :goto_0

    .line 793
    .end local v5           #value:Ljava/lang/StringBuffer;
    :cond_4
    new-instance v5, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 794
    .restart local v5       #value:Ljava/lang/StringBuffer;
    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 806
    :cond_5
    sparse-switch v3, :sswitch_data_0

    .line 838
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attrValueTable:[Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Lorg/kxml2/wap/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 837
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 841
    :goto_3
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    goto :goto_2

    .line 808
    :sswitch_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v6

    invoke-direct {p0, v6, v8}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    goto :goto_3

    .line 812
    :sswitch_1
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 816
    :sswitch_2
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 829
    :sswitch_3
    invoke-virtual {p0, v3}, Lorg/kxml2/wap/WbxmlParser;->parseWapExtension(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lorg/kxml2/wap/WbxmlParser;->resolveWapExtension(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 833
    :sswitch_4
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 806
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x40 -> :sswitch_3
        0x41 -> :sswitch_3
        0x42 -> :sswitch_3
        0x80 -> :sswitch_3
        0x81 -> :sswitch_3
        0x82 -> :sswitch_3
        0x83 -> :sswitch_4
        0xc0 -> :sswitch_3
        0xc1 -> :sswitch_3
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 960
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 961
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 962
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 963
    :cond_0
    return v0
.end method

.method readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 967
    const/4 v1, 0x0

    .line 971
    .local v1, result:I
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v0

    .line 972
    .local v0, i:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 974
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 976
    return v1
.end method

.method readStrI()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 981
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x1

    .line 983
    .local v3, wsp:Z
    :goto_0
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 984
    .local v1, i:I
    if-nez v1, :cond_0

    .line 995
    iput-boolean v3, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    .line 996
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 997
    .local v2, result:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 998
    return-object v2

    .line 987
    .end local v2           #result:Ljava/lang/String;
    :cond_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 988
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 990
    :cond_1
    const/16 v4, 0x20

    if-le v1, v4, :cond_2

    .line 991
    const/4 v3, 0x0

    .line 993
    :cond_2
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method readStrT()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1002
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v2

    .line 1006
    .local v2, pos:I
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 1008
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    .line 1010
    :cond_0
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1011
    .local v1, forReturn:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1013
    move v0, v2

    .line 1014
    .local v0, end:I
    :goto_0
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_3

    .line 1017
    :cond_1
    new-instance v1, Ljava/lang/String;

    .end local v1           #forReturn:Ljava/lang/String;
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    sub-int v4, v0, v2

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1018
    .restart local v1       #forReturn:Ljava/lang/String;
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    .end local v0           #end:I
    :cond_2
    return-object v1

    .line 1015
    .restart local v0       #end:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ne p1, v0, :cond_1

    .line 415
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 418
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x40

    if-ne p1, v1, :cond_3

    const-string v1, "WAP Ext."

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 419
    :cond_2
    return-void

    .line 418
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/kxml2/wap/WbxmlParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method resolveId([Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "tab"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 884
    and-int/lit8 v1, p2, 0x7f

    const/4 v2, 0x5

    sub-int v0, v1, v2

    .line 885
    .local v0, idx:I
    if-ne v0, v3, :cond_0

    .line 886
    iput v3, p0, Lorg/kxml2/wap/WbxmlParser;->wapCode:I

    .line 887
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v1

    .line 897
    :goto_0
    return-object v1

    .line 889
    :cond_0
    if-ltz v0, :cond_1

    .line 890
    if-eqz p1, :cond_1

    .line 891
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 892
    aget-object v1, p1, v0

    if-nez v1, :cond_2

    .line 893
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undef."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 895
    :cond_2
    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Lorg/kxml2/wap/WbxmlParser;->wapCode:I

    .line 897
    aget-object v1, p1, v0

    goto :goto_0
.end method

.method protected resolveWapExtension(ILjava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter "id"
    .parameter "data"

    .prologue
    const-string v5, "0123456789abcdef"

    .line 869
    instance-of v4, p2, [B

    if-eqz v4, :cond_1

    .line 870
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 871
    .local v3, sb:Ljava/lang/StringBuffer;
    move-object v0, p2

    check-cast v0, [B

    move-object v1, v0

    .line 873
    .local v1, b:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_0

    .line 877
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 880
    .end local v1           #b:[B
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :goto_1
    return-object v4

    .line 874
    .restart local v1       #b:[B
    .restart local v2       #i:I
    .restart local v3       #sb:Ljava/lang/StringBuffer;
    :cond_0
    const-string v4, "0123456789abcdef"

    aget-byte v4, v1, v2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 875
    const-string v4, "0123456789abcdef"

    aget-byte v4, v1, v2

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 873
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    .end local v1           #b:[B
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "$("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public setAttrStartTable(I[Ljava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "table"

    .prologue
    .line 1048
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_START_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lorg/kxml2/wap/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method public setAttrValueTable(I[Ljava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "table"

    .prologue
    .line 1061
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_VALUE_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lorg/kxml2/wap/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1062
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .parameter "feature"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 479
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iput-boolean p2, p0, Lorg/kxml2/wap/WbxmlParser;->processNsp:Z

    .line 483
    :goto_0
    return-void

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported feature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .parameter "in"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 429
    iput-object p1, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    .line 432
    :try_start_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v5

    iput v5, p0, Lorg/kxml2/wap/WbxmlParser;->version:I

    .line 433
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v5

    iput v5, p0, Lorg/kxml2/wap/WbxmlParser;->publicIdentifierId:I

    .line 435
    iget v5, p0, Lorg/kxml2/wap/WbxmlParser;->publicIdentifierId:I

    if-nez v5, :cond_0

    .line 436
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    .line 438
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v0

    .line 440
    .local v0, charset:I
    if-nez p2, :cond_2

    .line 441
    sparse-switch v0, :sswitch_data_0

    .line 452
    new-instance v5, Ljava/io/UnsupportedEncodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v0           #charset:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 472
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 473
    const-string v5, "Illegal input format"

    invoke-direct {p0, v5}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 475
    .end local v2           #e:Ljava/io/IOException;
    :goto_0
    return-void

    .line 443
    .restart local v0       #charset:I
    :sswitch_0
    :try_start_1
    const-string v5, "ISO-8859-1"

    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    .line 458
    :goto_1
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v4

    .line 459
    .local v4, strTabSize:I
    new-array v5, v4, [B

    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    .line 461
    const/4 v3, 0x0

    .line 462
    .local v3, ok:I
    :goto_2
    if-lt v3, v4, :cond_3

    .line 468
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    .line 469
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    goto :goto_0

    .line 446
    .end local v3           #ok:I
    .end local v4           #strTabSize:I
    :sswitch_1
    const-string v5, "UTF-8"

    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    goto :goto_1

    .line 455
    :cond_2
    iput-object p2, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    goto :goto_1

    .line 463
    .restart local v3       #ok:I
    .restart local v4       #strTabSize:I
    :cond_3
    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    sub-int v6, v4, v3

    invoke-virtual {p1, v5, v3, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 464
    .local v1, cnt:I
    if-lez v1, :cond_1

    .line 465
    add-int/2addr v3, v1

    goto :goto_2

    .line 441
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6a -> :sswitch_1
    .end sparse-switch
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 423
    const-string v0, "InputStream required"

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "property"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 487
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagTable(I[Ljava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "table"

    .prologue
    .line 1029
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->TAG_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lorg/kxml2/wap/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1034
    return-void
.end method
