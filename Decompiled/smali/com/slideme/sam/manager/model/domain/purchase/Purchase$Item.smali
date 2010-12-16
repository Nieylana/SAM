.class public Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;
.super Ljava/lang/Object;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public bundleId:Ljava/lang/String;

.field public status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

.field public token:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/kxml2/io/KXmlParser;)V
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "item"

    invoke-virtual {p1, v2, v3, v4}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextTag()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 171
    return-void

    .line 154
    :cond_0
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, tagName:Ljava/lang/String;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->fromStatusString(Ljava/lang/String;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v1           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 169
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

    .line 157
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #tagName:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v2, "bundle_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->bundleId:Ljava/lang/String;

    goto :goto_0

    .line 159
    :cond_2
    const-string v2, "txn_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->transactionId:Ljava/lang/String;

    goto :goto_0

    .line 161
    :cond_3
    const-string v2, "token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->token:Ljava/lang/String;

    goto :goto_0

    .line 164
    :cond_4
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->skipSubTree()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
