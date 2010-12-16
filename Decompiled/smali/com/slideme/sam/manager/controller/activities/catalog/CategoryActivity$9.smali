.class Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$9;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status:[I


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status()[I
    .locals 3

    .prologue
    .line 370
    sget-object v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$9;->$SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status:[I

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
    sput-object v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$9;->$SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status:[I

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

.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$9;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIds()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 374
    :try_start_0
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    move-result-object v6

    invoke-virtual {v6}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getSessionId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$9;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-static {v7}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v7

    invoke-virtual {v7}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/slideme/sam/manager/model/appstore/services/StorageLocker;->purchaseCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 387
    .local v4, items:Ljava/util/List;,"Ljava/util/List<Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;>;"
    :goto_0
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 388
    .local v5, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 390
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 397
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 398
    .local v2, ids:[Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object v6, v2

    .line 406
    .end local v2           #ids:[Ljava/lang/String;
    .end local v4           #items:Ljava/util/List;,"Ljava/util/List<Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;>;"
    .end local v5           #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_2
    return-object v6

    .line 375
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 380
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    move-result-object v6

    invoke-virtual {v6}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getSessionId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$9;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-static {v7}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v7

    invoke-virtual {v7}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/slideme/sam/manager/model/appstore/services/StorageLocker;->purchaseCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .restart local v4       #items:Ljava/util/List;,"Ljava/util/List<Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;>;"
    goto :goto_0

    .line 381
    .end local v4           #items:Ljava/util/List;,"Ljava/util/List<Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;>;"
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 384
    .local v1, e1:Ljava/io/IOException;
    new-array v6, v8, [Ljava/lang/String;

    goto :goto_2

    .line 390
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v4       #items:Ljava/util/List;,"Ljava/util/List<Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;>;"
    .restart local v5       #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;

    .line 391
    .local v3, item:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;
    invoke-static {}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$9;->$SWITCH_TABLE$com$slideme$sam$manager$model$domain$purchase$Purchase$Status()[I

    move-result-object v7

    iget-object v8, v3, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->status:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-virtual {v8}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 393
    :pswitch_0
    iget-object v7, v3, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->bundleId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v3, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;->bundleId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 406
    .end local v3           #item:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Item;
    :cond_2
    new-array v6, v8, [Ljava/lang/String;

    goto :goto_2

    .line 391
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingLoaded()V
    .locals 3

    .prologue
    .line 410
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$9;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 411
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$9;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    const-class v2, Lcom/slideme/sam/manager/controller/activities/storagelocker/StorageLockerEmptyActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 412
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$9;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 413
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$9;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->finish()V

    .line 414
    return-void
.end method
