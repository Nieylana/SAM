.class public Lcom/slideme/sam/manager/model/appstore/services/StorageLocker;
.super Ljava/lang/Object;
.source "StorageLocker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static purchaseCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "sessionId"
    .parameter "deviceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/slideme/sam/manager/model/SamConstants;->PURCHASE_CHECK_URL:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .local v2, purchaseUrl:Ljava/lang/StringBuilder;
    const-string v4, "&sessid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v4, "&device_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const/4 v1, 0x0

    .line 29
    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/slideme/sam/manager/model/data/net/HTTPUtils;->httpGet(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 30
    new-instance v4, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;

    invoke-direct {v4}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;-><init>()V

    invoke-static {v1}, Lcom/slideme/sam/manager/model/utils/ParserUtils;->createParserFrom(Ljava/io/InputStream;)Lorg/kxml2/io/KXmlParser;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->parse(Lorg/kxml2/io/KXmlParser;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 36
    .local v3, rest:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 39
    :cond_0
    iget-object v4, v3, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->items:Ljava/util/List;

    return-object v4

    .line 32
    .end local v3           #rest:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 33
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Parse Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    .line 36
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 38
    :cond_1
    throw v4
.end method
