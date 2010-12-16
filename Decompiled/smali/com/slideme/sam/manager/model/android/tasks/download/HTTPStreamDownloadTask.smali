.class public Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;
.super Lcom/slideme/sam/manager/model/android/tasks/download/DownloadTask;
.source "HTTPStreamDownloadTask.java"


# static fields
.field public static final CONTEXT:Ljava/lang/String; = "DOWNLOAD_SERVICE"


# instance fields
.field protected conn:Ljava/net/URLConnection;

.field protected is:Ljava/io/InputStream;

.field protected output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "url"
    .parameter "p"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;-><init>(Ljava/net/URL;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/io/OutputStream;)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;)V
    .locals 1
    .parameter "url"
    .parameter "p"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/slideme/sam/manager/model/android/tasks/download/DownloadTask;-><init>(Ljava/net/URL;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->is:Ljava/io/InputStream;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "url"
    .parameter "p"
    .parameter "output"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/slideme/sam/manager/model/android/tasks/download/DownloadTask;-><init>(Ljava/net/URL;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->is:Ljava/io/InputStream;

    .line 25
    iput-object p3, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->output:Ljava/io/OutputStream;

    .line 26
    return-void
.end method


# virtual methods
.method protected getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "DOWNLOAD_SERVICE"

    return-object v0
.end method

.method public init()Z
    .locals 7

    .prologue
    const/16 v3, 0x2710

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 51
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 52
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    instance-of v2, v2, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 54
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 55
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    invoke-virtual {v2, v6}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 56
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    const-string v3, "User-Agent"

    const-string v4, "SAM"

    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    instance-of v2, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v3, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v3}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->reviewEstimatedEffort(I)V

    .line 62
    const/16 v2, 0xc8

    :try_start_1
    iget-object p0, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    .end local p0
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eq v2, v3, :cond_1

    move v2, v5

    .line 74
    :goto_0
    return v2

    .line 46
    .restart local p0
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, ignored:Ljava/io/IOException;
    move v2, v5

    .line 48
    goto :goto_0

    .line 66
    .end local v1           #ignored:Ljava/io/IOException;
    .end local p0
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 67
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v5

    .line 68
    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    move v2, v6

    .line 74
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTPStreamDownloadTask{output="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->output:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    const-string v1, ", conn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    const-string v1, ", is="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/slideme/sam/manager/model/android/tasks/download/DownloadTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uninit()Z
    .locals 1

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 114
    iget-object p0, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    .end local p0
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 116
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 111
    .restart local p0
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public work()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 81
    :try_start_0
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->conn:Ljava/net/URLConnection;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->is:Ljava/io/InputStream;

    if-nez v4, :cond_0

    .line 82
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Null stream!!!"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, ignored:Ljava/io/IOException;
    move v4, v7

    .line 103
    .end local v2           #ignored:Ljava/io/IOException;
    :goto_0
    return v4

    .line 85
    :cond_0
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 87
    .local v0, buffer:[B
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->currentState()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    move-result-object v4

    sget-object v5, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->WORKING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->is:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, n:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 103
    .end local v3           #n:I
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 88
    .restart local v3       #n:I
    :cond_3
    if-eqz v3, :cond_1

    .line 90
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->output:Ljava/io/OutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->output:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 92
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->currentState()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    move-result-object v4

    sget-object v5, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->WORKING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    if-ne v4, v5, :cond_1

    .line 93
    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->effortUpdate(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 98
    .end local v0           #buffer:[B
    .end local v3           #n:I
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/Exception;
    move v4, v7

    .line 99
    goto :goto_0
.end method
