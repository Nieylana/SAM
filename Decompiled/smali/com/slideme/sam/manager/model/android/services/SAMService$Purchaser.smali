.class Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;
.super Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
.source "SAMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/android/services/SAMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Purchaser"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status:[I = null

.field private static final PENDING_POLL_COUNT:I = 0x14


# instance fields
.field private alreadyPurchased:Z

.field private final app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

.field private downloader:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

.field i:I

.field private final notificationCode:I

.field private sessionId:Ljava/lang/String;

.field private status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

.field final synthetic this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;


# direct methods
.method static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status()[I
    .locals 3

    .prologue
    .line 339
    sget-object v0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->$SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status:[I

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
    sput-object v0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->$SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status:[I

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

.method public constructor <init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V
    .locals 2
    .parameter
    .parameter "app"

    .prologue
    const/4 v1, 0x0

    .line 357
    iput-object p1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    .line 353
    sget-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->IMMEDIATE:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    invoke-direct {p0, v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;-><init>(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;)V

    .line 345
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->NULL:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    iput-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 346
    iput-boolean v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->alreadyPurchased:Z

    .line 532
    iput v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->i:I

    .line 355
    iput-object p2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 356
    iget-object v0, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->notificationCode:I

    return-void
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;)Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;
    .locals 1
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->downloader:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    return-object v0
.end method

.method static synthetic access$2(Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 561
    invoke-direct {p0, p1, p2}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->notifyUser(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;)V
    .locals 0
    .parameter

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->getSessionId()V

    return-void
.end method

.method private doPurchase(I)V
    .locals 15
    .parameter "i"

    .prologue
    .line 361
    if-lez p1, :cond_5

    .line 363
    const v9, 0x7f040001

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Purchasing "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v11, v11, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->notifyUser(ILjava/lang/String;)V

    .line 365
    const/4 v7, 0x0

    .line 367
    .local v7, purchased:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;
    :try_start_0
    iget-object v9, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v9, v9, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->purchaseCheck(Ljava/lang/String;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 384
    .local v6, p:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :goto_0
    if-eqz v6, :cond_0

    .line 388
    iget-object v9, v6, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->items:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 404
    :cond_0
    if-eqz v7, :cond_3

    .line 405
    iget-object v9, v7, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    iput-object v9, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 406
    iget-object v9, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v10, v7, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->token:Ljava/lang/String;

    iput-object v10, v9, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->token:Ljava/lang/String;

    .line 407
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->alreadyPurchased:Z

    .line 454
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->handleStatus()V

    .line 458
    .end local v6           #p:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    .end local v7           #purchased:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;
    :goto_3
    return-void

    .line 368
    .restart local v7       #purchased:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 369
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 372
    :try_start_1
    iget-object v9, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v9, v9, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->purchaseCheck(Ljava/lang/String;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .restart local v6       #p:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    goto :goto_0

    .line 373
    .end local v6           #p:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 375
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 376
    const v9, 0x7f040001

    const-string v10, "Purchase check failed"

    invoke-direct {p0, v9, v10}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->notifyUser(ILjava/lang/String;)V

    .line 378
    const-string v9, "Purchase Check Failed"

    iget-object v10, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v10}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->getFlurryParams()Ljava/util/Map;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 379
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$0()Ljava/util/HashMap;

    move-result-object v9

    iget-object v10, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v10, v10, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 388
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v6       #p:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;

    .line 389
    .local v4, item:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->$SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status()[I

    move-result-object v10

    iget-object v11, v4, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v11}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 396
    :pswitch_0
    move-object v7, v4

    .line 397
    const v10, 0x7f040001

    const-string v11, "Already purchased"

    invoke-direct {p0, v10, v11}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->notifyUser(ILjava/lang/String;)V

    .line 398
    const-string v10, "Re-Purchase Attempt"

    iget-object v11, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v11}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->getFlurryParams()Ljava/util/Map;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 410
    .end local v4           #item:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;
    :cond_3
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    move-result-object v9

    invoke-virtual {v9}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getUser()Lcom/slideme/sam/manager/model/domain/user/User;

    move-result-object v9

    sget-object v10, Lcom/slideme/sam/manager/model/domain/user/User$Roles;->PAYING:Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    invoke-virtual {v9, v10}, Lcom/slideme/sam/manager/model/domain/user/User;->hasRole(Lcom/slideme/sam/manager/model/domain/user/User$Roles;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 412
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 413
    .local v3, intent:Landroid/content/Intent;
    const/high16 v9, 0x2

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 414
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v0, b:Landroid/os/Bundle;
    const-string v9, "APPLICATION"

    iget-object v10, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 416
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 417
    iget-object v9, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const-class v10, Lcom/slideme/sam/manager/controller/activities/generic/HelpActivity;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 418
    new-instance v5, Landroid/app/Notification;

    const v9, 0x7f040001

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v5, v9, v10, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 422
    .local v5, notification:Landroid/app/Notification;
    iget-object v9, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const-string v10, "No payment method associated"

    .line 423
    iget-object v11, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v11, v11, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    .line 424
    iget-object v12, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v13, v13

    const/4 v14, 0x0

    .line 423
    invoke-static {v12, v13, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 421
    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 425
    iget-object v9, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {v9}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$1(Lcom/slideme/sam/manager/model/android/services/SAMService;)Landroid/app/NotificationManager;

    move-result-object v9

    iget v10, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->notificationCode:I

    invoke-virtual {v9, v10, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 427
    const-string v9, "Purchase Attempt NPM"

    iget-object v10, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v10}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->getFlurryParams()Ljava/util/Map;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 428
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$0()Ljava/util/HashMap;

    move-result-object v9

    iget-object v10, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v10, v10, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 435
    .end local v0           #b:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #notification:Landroid/app/Notification;
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->purchase()Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;

    move-result-object v8

    .line 438
    .local v8, result:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;
    const-string v9, "Purchase Attempt"

    iget-object v10, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v10}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->getFlurryParams()Ljava/util/Map;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 447
    if-eqz v8, :cond_1

    .line 448
    iget-object v9, v8, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;->purchaseStatus:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    iput-object v9, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 449
    iget-object v9, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v10, v8, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;->token:Ljava/lang/String;

    iput-object v10, v9, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->token:Ljava/lang/String;

    goto/16 :goto_2

    .line 439
    .end local v8           #result:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;
    :catch_2
    move-exception v9

    move-object v1, v9

    .line 443
    .restart local v1       #e:Ljava/io/IOException;
    const v9, 0x7f040001

    const-string v10, "Retrying purchase"

    invoke-direct {p0, v9, v10}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->notifyUser(ILjava/lang/String;)V

    .line 444
    add-int/lit8 p1, p1, -0x1

    invoke-direct/range {p0 .. p1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->doPurchase(I)V

    goto/16 :goto_3

    .line 456
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #p:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    .end local v7           #purchased:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;
    :cond_5
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$0()Ljava/util/HashMap;

    move-result-object v9

    iget-object v10, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v10, v10, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private downloadFailed(Ljava/lang/String;)V
    .locals 5
    .parameter "appendix"

    .prologue
    const-string v2, "Reason"

    .line 462
    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->getFlurryParams()Ljava/util/Map;

    move-result-object v0

    .line 463
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Reason"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    const-string v1, "Reason"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_0
    const-string v1, "Reason"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v1, "Purchase Failed"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 467
    const v1, 0x108008a

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const v4, 0x7f08006a

    invoke-virtual {v3, v4}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->notifyUser(ILjava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$0()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    return-void
.end method

.method private getSessionId()V
    .locals 1

    .prologue
    .line 690
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->sessionId:Ljava/lang/String;

    .line 691
    return-void
.end method

.method private handleStatus()V
    .locals 5

    .prologue
    const v3, 0x7f020040

    .line 474
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->$SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status()[I

    move-result-object v1

    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v2}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 477
    :pswitch_0
    const v1, 0x7f040001

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pending ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v3, v3, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->notifyUser(ILjava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->purchasePoll()V

    goto :goto_0

    .line 481
    :pswitch_1
    const-string v1, " 901"

    invoke-direct {p0, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->downloadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :pswitch_2
    const-string v1, " 902"

    invoke-direct {p0, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->downloadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :pswitch_3
    const-string v1, " 903"

    invoke-direct {p0, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->downloadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :pswitch_4
    const-string v1, " 904"

    invoke-direct {p0, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->downloadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :pswitch_5
    const-string v1, " 905"

    invoke-direct {p0, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->downloadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :pswitch_6
    const-string v1, " 906"

    invoke-direct {p0, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->downloadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :pswitch_7
    iget-boolean v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->alreadyPurchased:Z

    if-nez v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const v2, 0x7f080067

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->notifyUser(ILjava/lang/String;)V

    .line 507
    const-string v1, "Purchase Success"

    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v2}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->getFlurryParams()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 513
    :goto_1
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->currentState()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    move-result-object v1

    sget-object v2, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->WORKING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    if-ne v1, v2, :cond_0

    .line 514
    new-instance v1, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    iget-object v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;-><init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)V

    iput-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->downloader:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    .line 515
    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->downloader:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$1(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)V

    .line 516
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$0()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    iget-object v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->downloader:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v3}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$2(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->downloader:Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$2(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->submit()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->waitFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 519
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 520
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 510
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const v2, 0x7f080053

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->notifyUser(ILjava/lang/String;)V

    .line 511
    const-string v1, "Already Purchased"

    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v2}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->getFlurryParams()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private notifyUser(ILjava/lang/String;)V
    .locals 8
    .parameter "anim"
    .parameter "text"

    .prologue
    .line 563
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 564
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 565
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 566
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "APPLICATION"

    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 567
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 568
    iget-object v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const-class v4, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 569
    new-instance v2, Landroid/app/Notification;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, p1, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 573
    .local v2, notification:Landroid/app/Notification;
    iget-object v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    .line 574
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v4, v4, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    .line 575
    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    .line 574
    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 572
    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 576
    iget-object v3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {v3}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$1(Lcom/slideme/sam/manager/model/android/services/SAMService;)Landroid/app/NotificationManager;

    move-result-object v3

    iget v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->notificationCode:I

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 577
    return-void
.end method


# virtual methods
.method protected getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    const-string v0, "SAM_SERVICE"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x1

    return v0
.end method

.method public purchase()Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const-string v9, "unknown"

    const-string v13, "none"

    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/slideme/sam/manager/model/SamConstants;->PURCHASE_URL:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    .local v4, purchaseUrlBuilder:Ljava/lang/StringBuilder;
    const-string v9, "&sessid="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->sessionId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&bundle_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v10, v10, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 642
    const-string v10, "&price="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-wide v10, v10, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&device_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {v10}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$2(Lcom/slideme/sam/manager/model/android/services/SAMService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    .local v3, purchaseURL:Ljava/lang/String;
    const/4 v1, 0x0

    .line 648
    .local v1, inputStream:Ljava/io/InputStream;
    const/4 v9, 0x3

    :try_start_0
    invoke-static {v3, v9}, Lcom/slideme/sam/manager/model/data/net/HTTPUtils;->httpGet(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 649
    new-instance v9, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;

    invoke-direct {v9}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;-><init>()V

    invoke-static {v1}, Lcom/slideme/sam/manager/model/utils/ParserUtils;->createParserFrom(Ljava/io/InputStream;)Lorg/kxml2/io/KXmlParser;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->parse(Lorg/kxml2/io/KXmlParser;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 655
    .local v5, rest:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 658
    :cond_0
    iget-boolean v9, v5, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->isSuccess:Z

    if-nez v9, :cond_3

    .line 659
    iget-object v9, v5, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->errorMessage:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, message:Ljava/lang/String;
    new-instance v9, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;

    const-string v10, "none"

    invoke-static {v2}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->fromStatusMsg(Ljava/lang/String;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    move-result-object v10

    const-string v11, "none"

    invoke-direct {v9, v13, v10, v13}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;-><init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;Ljava/lang/String;)V

    .line 666
    .end local v2           #message:Ljava/lang/String;
    .end local v5           #rest:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    .end local p0
    :cond_1
    :goto_0
    return-object v9

    .line 651
    .restart local p0
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 652
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v9, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;

    const-string v10, "unknown"

    sget-object v11, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->PENDING:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    const-string v12, "unknown"

    invoke-direct {v9, v10, v11, v12}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;-><init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 654
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    .line 655
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 656
    :cond_2
    throw v9

    .line 662
    .restart local v5       #rest:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :cond_3
    iget-object v9, v5, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->items:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;

    iget-object v6, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 663
    .local v6, status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;
    iget-object v9, v5, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->items:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;

    iget-object v8, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->transactionId:Ljava/lang/String;

    .line 664
    .local v8, transactionId:Ljava/lang/String;
    iget-object v9, v5, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->items:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;

    iget-object v7, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->token:Ljava/lang/String;

    .line 666
    .local v7, token:Ljava/lang/String;
    new-instance v9, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;

    invoke-direct {v9, v8, v6, v7}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;-><init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public purchaseCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;
    .locals 10
    .parameter "bundleId"
    .parameter "sessionId"
    .parameter "token"
    .parameter "count"
    .parameter "deviceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-string v9, "none"

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/slideme/sam/manager/model/SamConstants;->PURCHASE_CHECK_URL:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    .local v2, purchaseUrl:Ljava/lang/StringBuilder;
    const-string v6, "&sessid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&bundle_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 606
    const-string v7, "&count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&device_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const/4 v1, 0x0

    .line 612
    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/slideme/sam/manager/model/data/net/HTTPUtils;->httpGet(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 613
    new-instance v6, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;

    invoke-direct {v6}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;-><init>()V

    invoke-static {v1}, Lcom/slideme/sam/manager/model/utils/ParserUtils;->createParserFrom(Ljava/io/InputStream;)Lorg/kxml2/io/KXmlParser;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->parse(Lorg/kxml2/io/KXmlParser;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 619
    .local v3, rest:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 622
    :cond_0
    iget-boolean v6, v3, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->isSuccess:Z

    if-nez v6, :cond_2

    .line 624
    new-instance v6, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;

    const-string v7, "none"

    sget-object v7, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->NULL:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    const-string v8, "none"

    invoke-direct {v6, v9, v7, v9}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;-><init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;Ljava/lang/String;)V

    .line 635
    .end local p0
    :goto_0
    return-object v6

    .line 615
    .end local v3           #rest:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    .restart local p0
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 616
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Parse Exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v6

    .line 619
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 620
    :cond_1
    throw v6

    .line 628
    .restart local v3       #rest:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :cond_2
    iget-object v6, v3, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 629
    new-instance v6, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;

    const-string v7, "none"

    sget-object v7, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->PENDING:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-direct {v6, v9, v7, p3}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;-><init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_3
    iget-object v6, v3, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->items:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;

    iget-object v4, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 633
    .local v4, status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;
    iget-object v6, v3, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->items:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;

    iget-object v5, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->transactionId:Ljava/lang/String;

    .line 635
    .local v5, transactionId:Ljava/lang/String;
    new-instance v6, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;

    invoke-direct {v6, v5, v4, p3}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;-><init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public purchaseCheck(Ljava/lang/String;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    .locals 7
    .parameter "bundleId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/slideme/sam/manager/model/SamConstants;->PURCHASE_CHECK_URL:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    .local v2, purchaseUrl:Ljava/lang/StringBuilder;
    const-string v4, "&sessid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->sessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string v4, "&bundle_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v4, "&device_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {v5}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$2(Lcom/slideme/sam/manager/model/android/services/SAMService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const/4 v1, 0x0

    .line 590
    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/slideme/sam/manager/model/data/net/HTTPUtils;->httpGet(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 591
    new-instance v4, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;

    invoke-direct {v4}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;-><init>()V

    invoke-static {v1}, Lcom/slideme/sam/manager/model/utils/ParserUtils;->createParserFrom(Ljava/io/InputStream;)Lorg/kxml2/io/KXmlParser;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase;->parse(Lorg/kxml2/io/KXmlParser;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 597
    .local v3, rest:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 599
    :cond_0
    return-object v3

    .line 593
    .end local v3           #rest:Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 594
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Parse Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    .line 597
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 598
    :cond_1
    throw v4
.end method

.method public purchasePoll()V
    .locals 7

    .prologue
    .line 536
    monitor-enter p0

    .line 538
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 536
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    iget v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->i:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->currentState()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    move-result-object v0

    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->WORKING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    if-ne v0, v1, :cond_0

    .line 545
    :try_start_2
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v1, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->sessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v3, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->token:Ljava/lang/String;

    iget v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->i:I

    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {v0}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$2(Lcom/slideme/sam/manager/model/android/services/SAMService;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->purchaseCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;

    move-result-object v0

    iget-object v0, v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;->purchaseStatus:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    iput-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 552
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->handleStatus()V

    .line 559
    :goto_1
    return-void

    .line 536
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 548
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 550
    .local v6, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 552
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->handleStatus()V

    goto :goto_1

    .line 551
    .end local v6           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v0

    .line 552
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->handleStatus()V

    .line 553
    throw v0

    .line 555
    :cond_0
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v1, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const v0, 0x108008a

    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const v2, 0x7f08006a

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->notifyUser(ILjava/lang/String;)V

    goto :goto_1

    .line 539
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public uninit()Z
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x1

    return v0
.end method

.method public work()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 684
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->getSessionId()V

    .line 685
    invoke-direct {p0, v0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->doPurchase(I)V

    .line 686
    return v0
.end method
