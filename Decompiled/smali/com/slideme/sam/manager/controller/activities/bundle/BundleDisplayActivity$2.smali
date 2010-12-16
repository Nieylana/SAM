.class Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$2;
.super Ljava/lang/Object;
.source "BundleDisplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->playGIF(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 130
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-static {v4}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$2(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Lcom/slideme/sam/manager/model/utils/GifDecoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->getFrameCount()I

    move-result v1

    .line 131
    .local v1, n:I
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-static {v4}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$2(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Lcom/slideme/sam/manager/model/utils/GifDecoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->getLoopCount()I

    move-result v2

    .line 133
    .local v2, ntimes:I
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_2

    .line 143
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-static {v4}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$4(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_0

    .line 144
    :cond_1
    return-void

    .line 134
    :cond_2
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-static {v5}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$2(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Lcom/slideme/sam/manager/model/utils/GifDecoder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$3(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Landroid/graphics/Bitmap;)V

    .line 135
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-static {v4}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$2(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Lcom/slideme/sam/manager/model/utils/GifDecoder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->getDelay(I)I

    move-result v3

    .line 136
    .local v3, t:I
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    iget-object v4, v4, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    iget-object v5, v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    int-to-long v4, v3

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v4

    goto :goto_1
.end method
