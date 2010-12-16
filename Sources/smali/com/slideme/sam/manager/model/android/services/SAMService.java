.class public Lcom/slideme/sam/manager/model/android/services/SAMService;
.super Landroid/app/Service;
.source "SAMService.java"

# interfaces
.implements Lcom/slideme/sam/manager/model/event/Event$Notifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;,
        Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status:[I = null

.field public static final CONTEXT:Ljava/lang/String; = "SAM_SERVICE"

.field private static final DEFAULT_MAX_DOWNLOADERS:I = 0x4

.field private static final downloaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/slideme/sam/manager/model/android/services/SAMService;


# instance fields
.field private deviceIdentifier:Ljava/lang/String;

.field private deviceInfoURLFragment:Ljava/lang/String;

.field private final installMonitor:Ljava/lang/Object;

.field private lastUpdateRequestCode:I

.field private final list:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;",
            ">;"
        }
    .end annotation
.end field

.field protected loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

.field private manager:Landroid/app/NotificationManager;

.field private updateChecker:Ljava/util/TimerTask;


# direct methods
.method static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status()[I
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcom/slideme/sam/manager/model/android/services/SAMService;->$SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->values()[Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->CANCELED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->DOWNLOADED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->FAILED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->INSTALLED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->INVALID_UUID:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->NULL:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->OUT_OF_TOKENS:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->PENDING:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->PRICE_MISMATCH:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->RECEIVED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/slideme/sam/manager/model/android/services/SAMService;->$SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/slideme/sam/manager/model/android/services/SAMService;->downloaders:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->installMonitor:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->updateChecker:Ljava/util/TimerTask;

    .line 106
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->list:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 65
    return-void
.end method

.method static synthetic access$0()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/slideme/sam/manager/model/android/services/SAMService;->downloaders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/model/android/services/SAMService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->manager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/slideme/sam/manager/model/android/services/SAMService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->deviceIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/slideme/sam/manager/model/android/services/SAMService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->deviceInfoURLFragment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 956
    invoke-direct {p0, p1}, Lcom/slideme/sam/manager/model/android/services/SAMService;->addToInstallQueue(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    return-void
.end method

.method static synthetic access$5(Lcom/slideme/sam/manager/model/android/services/SAMService;)V
    .locals 0
    .parameter

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService;->updateCheck()V

    return-void
.end method

.method static synthetic access$6(Lcom/slideme/sam/manager/model/android/services/SAMService;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->list:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$7(Lcom/slideme/sam/manager/model/android/services/SAMService;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService;->waitForInstall()V

    return-void
.end method

.method private addToInstallQueue(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 959
    :try_start_0
    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->list:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    :goto_0
    return-void

    .line 960
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 961
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 962
    invoke-direct {p0, p1}, Lcom/slideme/sam/manager/model/android/services/SAMService;->addToInstallQueue(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    goto :goto_0
.end method

.method public static final getInstance()Lcom/slideme/sam/manager/model/android/services/SAMService;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/slideme/sam/manager/model/android/services/SAMService;->instance:Lcom/slideme/sam/manager/model/android/services/SAMService;

    return-object v0
.end method

.method private notifyUpdate(I)V
    .locals 7
    .parameter "count"

    .prologue
    .line 967
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 968
    .local v0, installIntent:Landroid/content/Intent;
    const-string v3, "UPDATE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    const-class v3, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 973
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 976
    new-instance v1, Landroid/app/Notification;

    const v3, 0x7f02004b

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 977
    .local v1, notification:Landroid/app/Notification;
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030024

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 978
    .local v2, updateView:Landroid/widget/RemoteViews;
    const v3, 0x7f0a00b4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    if-le p1, v5, :cond_0

    const v5, 0x7f0800d3

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 980
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v3, v3

    const/high16 v4, 0x2

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 982
    iget-object v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->manager:Landroid/app/NotificationManager;

    const/16 v4, 0x6f

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 983
    return-void

    .line 978
    :cond_0
    const v5, 0x7f0800d2

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private showUpdates()V
    .locals 2

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->getApps()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1048
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1049
    invoke-direct {p0, v0}, Lcom/slideme/sam/manager/model/android/services/SAMService;->notifyUpdate(I)V

    .line 1050
    :cond_0
    return-void
.end method

.method private startDownload(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    .locals 4
    .parameter "app"

    .prologue
    .line 238
    new-instance v0, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;-><init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)V

    .line 239
    .local v0, d:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;
    invoke-static {v0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$2(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    sget-object v1, Lcom/slideme/sam/manager/model/android/services/SAMService;->downloaders:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-static {v0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$2(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 243
    :cond_0
    invoke-static {v0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$2(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-result-object v1

    return-object v1
.end method

.method private updateCheck()V
    .locals 5

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/slideme/sam/manager/SAM;

    .line 987
    .local v1, sam:Lcom/slideme/sam/manager/SAM;
    invoke-virtual {v1}, Lcom/slideme/sam/manager/SAM;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 988
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 990
    .local v0, packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->lastUpdateRequestCode:I

    .line 991
    new-instance v2, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    iget v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->lastUpdateRequestCode:I

    const v4, 0x7f080008

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    .line 992
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    new-instance v3, Lcom/slideme/sam/manager/model/android/services/SAMService$4;

    invoke-direct {v3, p0, v0}, Lcom/slideme/sam/manager/model/android/services/SAMService$4;-><init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setFilter(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Filter;)V

    .line 1006
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    new-instance v3, Lcom/slideme/sam/manager/model/android/services/SAMService$5;

    invoke-direct {v3, p0, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$5;-><init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/SAM;)V

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPreloader(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;)V

    .line 1041
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v2

    iget v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->lastUpdateRequestCode:I

    invoke-virtual {v2, p0, v3}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->attachNotifier(Lcom/slideme/sam/manager/model/event/Event$Notifier;I)V

    .line 1042
    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v2}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->load()V

    .line 1044
    .end local v0           #packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_0
    return-void
.end method

.method private waitForInstall()V
    .locals 5

    .prologue
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 186
    .local v1, start:J
    iget-object v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->installMonitor:Ljava/lang/Object;

    monitor-enter v3

    .line 188
    :try_start_0
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->installMonitor:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 196
    return-void

    .line 190
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 191
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 192
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService;->waitForInstall()V

    goto :goto_0

    .line 186
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method


# virtual methods
.method public cancelDownload(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 706
    sget-object v1, Lcom/slideme/sam/manager/model/android/services/SAMService;->downloaders:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    sget-object v1, Lcom/slideme/sam/manager/model/android/services/SAMService;->downloaders:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    .line 708
    .local v0, task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->currentState()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    move-result-object v1

    sget-object v2, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->COMPLETED:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    if-eq v1, v2, :cond_0

    .line 709
    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->cancel()V

    .line 711
    .end local v0           #task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    :cond_0
    return-void
.end method

.method public download(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    .locals 6
    .parameter "app"

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->getFlurryParams()Ljava/util/Map;

    move-result-object v0

    .line 200
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "DUID"

    iget-object v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->deviceIdentifier:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v2, "Download Attempt"

    invoke-static {v2, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 202
    iget-wide v2, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 203
    new-instance v1, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;

    invoke-direct {v1, p0, p1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;-><init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    .line 204
    .local v1, p:Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;
    new-instance v2, Lcom/slideme/sam/manager/model/android/services/SAMService$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$3;-><init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;)V

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->registerObserver(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;)V

    .line 229
    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->submit()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    .line 230
    sget-object v2, Lcom/slideme/sam/manager/model/android/services/SAMService;->downloaders:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 233
    .end local v1           #p:Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/slideme/sam/manager/model/android/services/SAMService;->startDownload(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-result-object v2

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Service;->finalize()V

    .line 100
    return-void
.end method

.method public getContext()I
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public installFinished()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->installMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->installMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 277
    monitor-exit v0

    .line 282
    return-void

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDownloading(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    .locals 2
    .parameter "application"

    .prologue
    .line 700
    sget-object v0, Lcom/slideme/sam/manager/model/android/services/SAMService;->downloaders:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    sget-object v0, Lcom/slideme/sam/manager/model/android/services/SAMService;->downloaders:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-object v0, p0

    .line 702
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPuchased(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;
    .locals 8
    .parameter "app"

    .prologue
    .line 285
    new-instance v4, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;

    invoke-direct {v4, p0, p1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;-><init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    .line 286
    .local v4, p:Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;
    invoke-static {v4}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->access$3(Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;)V

    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, d:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :try_start_0
    iget-object v5, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->purchaseCheck(Ljava/lang/String;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 300
    :goto_0
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->items:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 301
    iget-object v5, v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 311
    :cond_0
    sget-object v5, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->NULL:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    :goto_2
    return-object v5

    .line 291
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 292
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 294
    :try_start_1
    iget-object v5, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->purchaseCheck(Ljava/lang/String;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 295
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 296
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 301
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #e1:Ljava/io/IOException;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;

    .line 302
    .local v3, i:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService;->$SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status()[I

    move-result-object v6

    iget-object v7, v3, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v7}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 307
    :pswitch_0
    iget-object v5, v3, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    goto :goto_2

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public notifyEvent(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "code"
    .parameter "data"

    .prologue
    .line 320
    packed-switch p2, :pswitch_data_0

    .line 336
    :goto_0
    :pswitch_0
    return-void

    .line 333
    :pswitch_1
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService;->showUpdates()V

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    return-void
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 112
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/slideme/sam/manager/SAM;

    .line 113
    .local v6, sam:Lcom/slideme/sam/manager/SAM;
    invoke-virtual {v6}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->deviceIdentifier:Ljava/lang/String;

    .line 114
    invoke-virtual {v6}, Lcom/slideme/sam/manager/SAM;->getDeviceInfoUrlFragment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->deviceInfoURLFragment:Ljava/lang/String;

    .line 115
    const-string v1, "DOWNLOAD_SERVICE"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->init(Ljava/lang/String;I)V

    .line 116
    const-string v1, "SAM_SERVICE"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->init(Ljava/lang/String;I)V

    .line 117
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->manager:Landroid/app/NotificationManager;

    .line 119
    sput-object p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->instance:Lcom/slideme/sam/manager/model/android/services/SAMService;

    .line 121
    new-instance v1, Lcom/slideme/sam/manager/model/android/services/SAMService$1;

    invoke-direct {v1, p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$1;-><init>(Lcom/slideme/sam/manager/model/android/services/SAMService;)V

    iput-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->updateChecker:Ljava/util/TimerTask;

    .line 128
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 129
    .local v0, t:Ljava/util/Timer;
    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService;->updateChecker:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1b7740

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 131
    new-instance v1, Lcom/slideme/sam/manager/model/android/services/SAMService$2;

    invoke-direct {v1, p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$2;-><init>(Lcom/slideme/sam/manager/model/android/services/SAMService;)V

    .line 180
    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$2;->start()V

    .line 181
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 251
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 76
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 257
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 258
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
