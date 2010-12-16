.class Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;
.super Ljava/lang/Object;
.source "SAMService.java"

# interfaces
.implements Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;-><init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I


# instance fields
.field final synthetic this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

.field private final synthetic val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;


# direct methods
.method static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State()[I
    .locals 3

    .prologue
    .line 747
    sget-object v0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I

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
    sput-object v0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I

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

.method constructor <init>(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    iput-object p2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public effortUpdate(I)V
    .locals 5
    .parameter "effortElapsed"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v0, p1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$6(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;I)V

    .line 813
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$1(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)V

    .line 814
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V

    .line 816
    return-void
.end method

.method public onStateChanged(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V
    .locals 9
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 749
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State()[I

    move-result-object v4

    invoke-virtual {p2}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 809
    :goto_0
    return-void

    .line 751
    :pswitch_0
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v5, v5, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v7, v5, v7, v8}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V

    goto :goto_0

    .line 754
    :pswitch_1
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v5, v5, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x2

    invoke-virtual {v4, v7, v5, v6, v8}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V

    .line 755
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v4}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$3(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)V

    goto :goto_0

    .line 758
    :pswitch_2
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v5, v5, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v4, v7, v5, v6, v8}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V

    .line 759
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v4}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$4(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)V

    goto :goto_0

    .line 780
    :pswitch_3
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v5, v5, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x3

    invoke-virtual {v4, v7, v5, v6, v8}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V

    .line 781
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    const-string v6, "downloaded"

    invoke-virtual {v4, v5, v6}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->downloadNotify(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Ljava/lang/String;)V

    .line 782
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 783
    .local v1, installIntent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 784
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "APPLICATION"

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 785
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 787
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v4}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$8(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v4

    const-class v5, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 789
    new-instance v3, Landroid/app/Notification;

    const v4, 0x1080082

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 789
    invoke-direct {v3, v4, v8, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 793
    .local v3, notification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v4}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$8(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v4

    const v5, 0x7f080028

    invoke-virtual {v4, v5}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v4}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$8(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v4

    .line 798
    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v5, v5, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v6}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$8(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v7, v7

    .line 799
    const/4 v8, 0x0

    .line 798
    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 797
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 801
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v4}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$8(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v4

    invoke-static {v4}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$1(Lcom/slideme/sam/manager/model/android/services/SAMService;)Landroid/app/NotificationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v5}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$5(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 802
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$0()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v5, v5, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v4}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$8(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-static {v4, v5}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$4(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    goto/16 :goto_0

    .line 749
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reviewEstimatedEffort(I)V
    .locals 5
    .parameter "totalEffort"

    .prologue
    .line 819
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V

    .line 820
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$1(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)V

    .line 821
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader$1;->this$1:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v0, p1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$7(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;I)V

    .line 823
    return-void
.end method
