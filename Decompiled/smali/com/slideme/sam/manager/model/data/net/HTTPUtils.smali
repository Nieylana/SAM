.class public Lcom/slideme/sam/manager/model/data/net/HTTPUtils;
.super Ljava/lang/Object;
.source "HTTPUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static httpGet(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 4
    .parameter "url"
    .parameter "i"

    .prologue
    .line 11
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 12
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 14
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 20
    :goto_0
    return-object v3

    .line 15
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 16
    .local v0, e:Ljava/io/IOException;
    if-lez p1, :cond_0

    .line 17
    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lcom/slideme/sam/manager/model/data/net/HTTPUtils;->httpGet(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 20
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
