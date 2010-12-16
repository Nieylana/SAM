.class Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;
.super Ljava/lang/Thread;
.source "BundleDisplayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setRemoteResources(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

.field private final synthetic val$bundleId:Ljava/lang/String;

.field private final synthetic val$imagesCount:I


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->val$bundleId:Ljava/lang/String;

    iput p3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->val$imagesCount:I

    .line 264
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;
    .locals 1
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 272
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 273
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;

    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://slideme.org/mobileapp/description/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->val$bundleId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->IMMEDIATE:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    invoke-direct {v4, v5, v6, v1}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;-><init>(Ljava/net/URL;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;->submit()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->waitFinish()V

    .line 274
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 278
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 279
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 280
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    new-instance v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$1;

    invoke-direct {v5, p0, v3}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$1;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 287
    :cond_0
    new-instance v0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;

    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->val$bundleId:Ljava/lang/String;

    iget v6, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->val$imagesCount:I

    invoke-direct {v0, v4, v5, v6}, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 289
    .local v0, adapter:Lcom/slideme/sam/manager/view/adapters/ImageAdapter;
    invoke-virtual {v0}, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->load()V

    .line 291
    invoke-virtual {v0}, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 292
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    new-instance v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;

    invoke-direct {v5, p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;Lcom/slideme/sam/manager/view/adapters/ImageAdapter;)V

    invoke-virtual {v4, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 337
    .end local v0           #adapter:Lcom/slideme/sam/manager/view/adapters/ImageAdapter;
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 325
    .restart local v0       #adapter:Lcom/slideme/sam/manager/view/adapters/ImageAdapter;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #text:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    new-instance v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$3;

    invoke-direct {v5, p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$3;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)V

    invoke-virtual {v4, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    .end local v0           #adapter:Lcom/slideme/sam/manager/view/adapters/ImageAdapter;
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #text:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 335
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
