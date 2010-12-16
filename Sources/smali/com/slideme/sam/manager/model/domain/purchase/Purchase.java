.class public Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;,
        Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;,
        Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;
    }
.end annotation


# instance fields
.field public errorMessage:Ljava/lang/String;

.field public isSuccess:Z

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->isSuccess:Z

    .line 11
    return-void
.end method

.method public static fromStatusMsg(Ljava/lang/String;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;
    .locals 1
    .parameter "message"

    .prologue
    .line 44
    const-string v0, "invalid application uuid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->INVALID_UUID:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 51
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const-string v0, "out of stock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->OUT_OF_TOKENS:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    goto :goto_0

    .line 48
    :cond_1
    const-string v0, "prices do not match"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->PRICE_MISMATCH:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    goto :goto_0

    .line 51
    :cond_2
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->NULL:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    goto :goto_0
.end method

.method public static fromStatusString(Ljava/lang/String;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;
    .locals 1
    .parameter "fromString"

    .prologue
    .line 26
    const-string v0, "pending"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->PENDING:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 39
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "received"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->RECEIVED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "downloaded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->DOWNLOADED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    goto :goto_0

    .line 32
    :cond_2
    const-string v0, "installed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->INSTALLED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    goto :goto_0

    .line 34
    :cond_3
    const-string v0, "failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->FAILED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    goto :goto_0

    .line 36
    :cond_4
    const-string v0, "canceled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->CANCELED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    goto :goto_0

    .line 39
    :cond_5
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->FAILED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    goto :goto_0
.end method

.method private parseApplications(Lorg/kxml2/io/KXmlParser;)V
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->items:Ljava/util/List;

    .line 125
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "applications"

    invoke-virtual {p1, v2, v3, v4}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextTag()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 138
    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, tagName:Ljava/lang/String;
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->items:Ljava/util/List;

    new-instance v3, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;

    invoke-direct {v3, p1}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;-><init>(Lorg/kxml2/io/KXmlParser;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 136
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SLIDE-000-010:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #tagName:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->skipSubTree()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private parseResponse(Lorg/kxml2/io/KXmlParser;)V
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 104
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "response"

    invoke-virtual {p1, v2, v3, v4}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextTag()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 117
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, tagName:Ljava/lang/String;
    const-string v2, "applications"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-direct {p0, p1}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->parseApplications(Lorg/kxml2/io/KXmlParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v1           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 115
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SLIDE-000-010:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #tagName:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->skipSubTree()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/kxml2/io/KXmlParser;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 76
    :try_start_0
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextTag()I

    .line 77
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "rest"

    invoke-virtual {p1, v2, v3, v4}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextTag()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 93
    return-object p0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, tagName:Ljava/lang/String;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->isSuccess:Z

    .line 83
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextTag()I

    .line 84
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->errorMessage:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v1           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 96
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 97
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SLIDE-000-010:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #tagName:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    invoke-direct {p0, p1}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->parseResponse(Lorg/kxml2/io/KXmlParser;)V

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->skipSubTree()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
