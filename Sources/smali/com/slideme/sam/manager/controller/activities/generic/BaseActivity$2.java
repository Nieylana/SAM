.class Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->setIcon(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;

.field private final synthetic val$bundleId:Ljava/lang/String;

.field private final synthetic val$dl:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;

.field private final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State()[I
    .locals 3

    .prologue
    .line 292
    sget-object v0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->values()[Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->CANCELLED:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->COMPLETED:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ERROR:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->INITIALIZING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->PENDING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->WORKING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;Landroid/widget/ImageView;Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->val$icon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->val$dl:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;

    iput-object p4, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->val$bundleId:Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public effortUpdate(I)V
    .locals 0
    .parameter "effortElapsed"

    .prologue
    .line 320
    return-void
.end method

.method public onStateChanged(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V
    .locals 6
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 294
    invoke-static {}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State()[I

    move-result-object v2

    invoke-virtual {p2}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 316
    :goto_0
    return-void

    .line 298
    :pswitch_0
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->val$icon:Landroid/widget/ImageView;

    monitor-enter v2

    .line 299
    :try_start_0
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->val$dl:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;

    if-ne v1, v3, :cond_0

    .line 300
    invoke-static {}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->getInstance()Lcom/slideme/sam/manager/model/data/cache/ResourceCache;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSdCardPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "images/icons/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->val$bundleId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    .local v0, iconBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 302
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;

    new-instance v4, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2$1;

    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->val$icon:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v5, v0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2$1;-><init>(Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 298
    .end local v0           #iconBitmap:Landroid/graphics/Bitmap;
    :cond_0
    monitor-exit v2

    goto :goto_0

    .end local v1           #tag:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public reviewEstimatedEffort(I)V
    .locals 0
    .parameter "totalEffort"

    .prologue
    .line 324
    return-void
.end method
