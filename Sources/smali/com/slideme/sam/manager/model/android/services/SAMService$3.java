.class Lcom/slideme/sam/manager/model/android/services/SAMService$3;
.super Ljava/lang/Object;
.source "SAMService.java"

# interfaces
.implements Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/model/android/services/SAMService;->download(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

.field private final synthetic val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

.field private final synthetic val$p:Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;


# direct methods
.method static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State()[I
    .locals 3

    .prologue
    .line 204
    sget-object v0, Lcom/slideme/sam/manager/model/android/services/SAMService$3;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I

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
    sput-object v0, Lcom/slideme/sam/manager/model/android/services/SAMService$3;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I

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

.method constructor <init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$3;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    iput-object p2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$3;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iput-object p3, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$3;->val$p:Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public effortUpdate(I)V
    .locals 0
    .parameter "effortElapsed"

    .prologue
    .line 223
    return-void
.end method

.method public onStateChanged(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V
    .locals 4
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 206
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService$3;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 209
    :pswitch_0
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$3;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    const-string v2, "failed"

    invoke-virtual {v0, v1, v2}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->installNotify(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$3;->val$p:Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;

    invoke-static {v0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->access$1(Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;)Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$3;->val$p:Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;

    invoke-static {v0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->access$1(Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;)Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;

    move-result-object v0

    invoke-static {v0}, Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;->access$2(Lcom/slideme/sam/manager/model/android/services/SAMService$Downloader;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->cancel()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$3;->val$p:Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;

    const v1, 0x108008a

    iget-object v2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$3;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;->access$2(Lcom/slideme/sam/manager/model/android/services/SAMService$Purchaser;ILjava/lang/String;)V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public reviewEstimatedEffort(I)V
    .locals 0
    .parameter "totalEffort"

    .prologue
    .line 227
    return-void
.end method
