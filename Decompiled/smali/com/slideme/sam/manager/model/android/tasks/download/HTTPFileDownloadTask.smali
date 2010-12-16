.class public Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
.super Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;
.source "HTTPFileDownloadTask.java"


# instance fields
.field private fileOutput:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/io/File;)V
    .locals 1
    .parameter "url"
    .parameter "p"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;-><init>(Ljava/net/URL;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/io/File;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "p"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;-><init>(Ljava/net/URL;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/io/File;)V
    .locals 0
    .parameter "url"
    .parameter "p"
    .parameter "f"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;-><init>(Ljava/net/URL;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;)V

    .line 23
    iput-object p3, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;->fileOutput:Ljava/io/File;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "p"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;-><init>(Ljava/net/URL;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/io/File;)V

    .line 15
    return-void
.end method


# virtual methods
.method public init()Z
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->init()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTPFileDownloadTask{fileOutput="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;->fileOutput:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 35
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uninit()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->uninit()Z

    move-result v0

    return v0

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public work()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 43
    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;->fileOutput:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;->fileOutput:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;->fileOutput:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v5

    .line 52
    :goto_0
    return v1

    .line 47
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;->fileOutput:Ljava/io/File;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2800

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;->output:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    invoke-super {p0}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->work()Z

    move-result v1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 49
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v1, v5

    .line 50
    goto :goto_0
.end method
