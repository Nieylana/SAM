.class public abstract Lcom/slideme/sam/manager/model/android/tasks/download/DownloadTask;
.super Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
.source "DownloadTask.java"


# instance fields
.field protected final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;)V
    .locals 0
    .parameter "url"
    .parameter "p"

    .prologue
    .line 12
    invoke-direct {p0, p2}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;-><init>(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;)V

    .line 13
    iput-object p1, p0, Lcom/slideme/sam/manager/model/android/tasks/download/DownloadTask;->url:Ljava/net/URL;

    .line 14
    return-void
.end method


# virtual methods
.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/tasks/download/DownloadTask;->url:Ljava/net/URL;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadTask{url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/tasks/download/DownloadTask;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
