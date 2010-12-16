.class Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;
.super Ljava/lang/Object;
.source "SAMService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/android/services/SAMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Downloader"
.end annotation


# instance fields
.field private final app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

.field private lastPublished:J

.field private final notificationCode:I

.field private order:J

.field private progress:I

.field private task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

.field final synthetic this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

.field private totalEffort:I


# direct methods
.method private constructor <init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V
    .locals 8
    .parameter
    .parameter "app"

    .prologue
    const/4 v4, 0x0

    const-string v7, ".apk"

    .line 833
    iput-object p1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    .line 720
    iput v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->totalEffort:I

    .line 721
    iput v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->progress:I

    .line 722
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->lastPublished:J

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    mul-long/2addr v3, v5

    const-wide v5, 0x7fffffffffffffffL

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->order:J

    .line 728
    iput-object p2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 729
    iget-object v3, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->notificationCode:I

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/mobileapp/download/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, downloadUrl:Ljava/lang/String;
    :try_start_0
    iget-object v3, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->token:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$3(Lcom/slideme/sam/manager/model/android/services/SAMService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 739
    const/4 v4, 0x1

    .line 738
    invoke-virtual {p1, v3, v4}, Lcom/slideme/sam/manager/model/android/services/SAMService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 746
    .local v2, output:Ljava/io/OutputStream;
    :goto_0
    new-instance v3, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;

    sget-object v4, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->IMMEDIATE:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    invoke-direct {v3, v0, v4, v2}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPStreamDownloadTask;-><init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    .line 747
    iget-object v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    new-instance v4, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;

    invoke-direct {v4, p0, p2}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;-><init>(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    invoke-virtual {v3, v4}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->registerObserver(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;)V

    .line 829
    .end local v2           #output:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 741
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$3(Lcom/slideme/sam/manager/model/android/services/SAMService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/slideme/sam/manager/model/SamConstants;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #output:Ljava/io/OutputStream;
    goto :goto_0

    .line 825
    .end local v2           #output:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 826
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 829
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->downloadFailed()V

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 726
    invoke-direct {p0, p1, p2}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;-><init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    return-void
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)V
    .locals 0
    .parameter

    .prologue
    .line 847
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->notifyProgress()V

    return-void
.end method

.method static synthetic access$2(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    .locals 1
    .parameter

    .prologue
    .line 719
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    return-object v0
.end method

.method static synthetic access$3(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)V
    .locals 0
    .parameter

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->downloadFailed()V

    return-void
.end method

.method static synthetic access$4(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)V
    .locals 0
    .parameter

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->downloadCanceled()V

    return-void
.end method

.method static synthetic access$5(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)I
    .locals 1
    .parameter

    .prologue
    .line 717
    iget v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->notificationCode:I

    return v0
.end method

.method static synthetic access$6(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 721
    iput p1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->progress:I

    return-void
.end method

.method static synthetic access$7(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 720
    iput p1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->totalEffort:I

    return-void
.end method

.method static synthetic access$8(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/android/services/SAMService;
    .locals 1
    .parameter

    .prologue
    .line 714
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    return-object v0
.end method

.method private downloadCanceled()V
    .locals 9

    .prologue
    .line 927
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const v5, 0x7f080030

    invoke-virtual {v4, v5}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 928
    .local v3, text:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 929
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x40

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 931
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const-class v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 932
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 933
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "APPLICATION"

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 934
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 937
    new-instance v2, Landroid/app/Notification;

    const v4, 0x108008a

    const/4 v5, 0x0

    .line 938
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 937
    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 940
    .local v2, notification1:Landroid/app/Notification;
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    .line 941
    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v5, v5, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v7, v7

    .line 942
    const/4 v8, 0x0

    .line 941
    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 940
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 943
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {v4}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$1(Lcom/slideme/sam/manager/model/android/services/SAMService;)Landroid/app/NotificationManager;

    move-result-object v4

    iget v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->notificationCode:I

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 945
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    const-string v6, "failed"

    invoke-virtual {v4, v5, v6}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->downloadNotify(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Ljava/lang/String;)V

    .line 946
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$0()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v5, v5, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    return-void
.end method

.method private downloadFailed()V
    .locals 9

    .prologue
    .line 901
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 902
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const v5, 0x7f0800c2

    invoke-virtual {v4, v5}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 906
    .local v3, text:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 907
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x40

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 909
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const-class v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 910
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 911
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "APPLICATION"

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 912
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 914
    new-instance v2, Landroid/app/Notification;

    const v4, 0x108008a

    const/4 v5, 0x0

    .line 915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 914
    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 917
    .local v2, notification1:Landroid/app/Notification;
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    .line 918
    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v5, v5, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v7, v7

    .line 919
    const/4 v8, 0x0

    .line 918
    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 917
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 920
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {v4}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$1(Lcom/slideme/sam/manager/model/android/services/SAMService;)Landroid/app/NotificationManager;

    move-result-object v4

    iget v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->notificationCode:I

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 922
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    const-string v6, "failed"

    invoke-virtual {v4, v5, v6}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->downloadNotify(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Ljava/lang/String;)V

    .line 923
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$0()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v5, v5, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    return-void

    .line 904
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #notification1:Landroid/app/Notification;
    .end local v3           #text:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const v5, 0x7f080029

    invoke-virtual {v4, v5}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method private notifyProgress()V
    .locals 15

    .prologue
    .line 849
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 851
    .local v4, now:J
    iget-wide v11, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->lastPublished:J

    sub-long v11, v4, v11

    const-wide/16 v13, 0xbb8

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    .line 897
    :goto_0
    return-void

    .line 857
    :cond_0
    iput-wide v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->lastPublished:J

    .line 858
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 859
    .local v2, installIntent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const-class v12, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 860
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 861
    .local v0, b:Landroid/os/Bundle;
    const-string v11, "APPLICATION"

    iget-object v12, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 862
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 865
    new-instance v3, Landroid/app/Notification;

    const v11, 0x1080081

    const/4 v12, 0x0

    .line 866
    iget-wide v13, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->order:J

    .line 865
    invoke-direct {v3, v11, v12, v13, v14}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 877
    .local v3, notification:Landroid/app/Notification;
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v11, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-virtual {v11}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f03000f

    invoke-direct {v1, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 879
    .local v1, contentViewProgressBar:Landroid/widget/RemoteViews;
    const v11, 0x7f0a0070

    iget-object v12, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const v13, 0x7f08002a

    invoke-virtual {v12, v13}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 880
    const v11, 0x7f0a0072

    iget v12, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->totalEffort:I

    iget v13, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->progress:I

    const/4 v14, 0x0

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 882
    iget v11, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->progress:I

    int-to-float v6, v11

    .line 883
    .local v6, pTemp:F
    iget v11, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->totalEffort:I

    int-to-float v8, v11

    .line 884
    .local v8, tTemp:F
    const/high16 v11, 0x42c8

    mul-float/2addr v11, v6

    div-float v7, v11, v8

    .line 885
    .local v7, pogressVal:F
    float-to-int v9, v7

    .line 886
    .local v9, xPercentProgress:I
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 887
    .local v10, xPercentProgressText:Ljava/lang/String;
    const v11, 0x7f0a0073

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "% "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v13, v13, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 889
    iput-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 891
    iget-object v11, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v12, v12

    const/high16 v13, 0x2

    invoke-static {v11, v12, v2, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    iput-object v11, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 896
    iget-object v11, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {v11}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$1(Lcom/slideme/sam/manager/model/android/services/SAMService;)Landroid/app/NotificationManager;

    move-result-object v11

    iget v12, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->notificationCode:I

    invoke-virtual {v11, v12, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->cancel()V

    .line 953
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->notifyProgress()V

    .line 842
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->submit()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    .line 845
    return-void
.end method
