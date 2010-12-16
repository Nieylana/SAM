.class public abstract Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
.super Ljava/lang/Object;
.source "AsynchronuousTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;,
        Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;,
        Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;,
        Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$Priority:[I

.field private static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I


# instance fields
.field private effort:I

.field private effortElapsed:I

.field executionMonitor:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;",
            ">;"
        }
    .end annotation
.end field

.field private final manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

.field private final observers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private oldState:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

.field protected final priority:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

.field private state:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

.field final taskMonitor:Ljava/lang/Object;

.field private final worker:Ljava/lang/Runnable;


# direct methods
.method static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$Priority()[I
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$Priority:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->values()[Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->HIGH:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->IMMEDIATE:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->LOW:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->NORMAL:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$Priority:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State()[I
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I

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
    sput-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State:[I

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

.method public constructor <init>(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;-><init>(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->worker:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->taskMonitor:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->executionMonitor:Ljava/util/concurrent/Future;

    .line 184
    sget-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->PENDING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->state:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    .line 185
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->state:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->oldState:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->effort:I

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->effortElapsed:I

    .line 217
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->observers:Ljava/util/LinkedList;

    .line 55
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->priority:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    .line 56
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->getContext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->get(Ljava/lang/String;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->state:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    return-object v0
.end method

.method static synthetic access$2(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->worker:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 250
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->state:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 254
    :pswitch_0
    sget-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->CANCELLED:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->updateState(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public cleanObservers()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->observers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 303
    return-void
.end method

.method public currentState()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->state:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    return-object v0
.end method

.method public effortElapsed()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->effortElapsed:I

    return v0
.end method

.method public effortEstimated()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->effort:I

    return v0
.end method

.method protected effortUpdate(I)V
    .locals 3
    .parameter "effort"

    .prologue
    .line 284
    iget v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->effortElapsed:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->effortElapsed:I

    .line 285
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->observers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    return-void

    .line 285
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;

    .line 286
    .local v0, o:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;
    iget v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->effortElapsed:I

    invoke-interface {v0, v2}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;->effortUpdate(I)V

    goto :goto_0
.end method

.method protected abstract getContext()Ljava/lang/String;
.end method

.method public abstract init()Z
.end method

.method notifyStack()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v0, v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->stackMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v1, v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->stackMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 120
    monitor-exit v0

    .line 123
    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public previousState()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->oldState:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    return-object v0
.end method

.method public registerObserver(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->unregisterObserver(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;)V

    .line 292
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->observers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method protected reviewEstimatedEffort(I)V
    .locals 3
    .parameter "effort"

    .prologue
    .line 277
    iput p1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->effort:I

    .line 278
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->observers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    return-void

    .line 278
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;

    .line 279
    .local v0, o:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;
    invoke-interface {v0, p1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;->reviewEstimatedEffort(I)V

    goto :goto_0
.end method

.method public submit()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    if-nez v1, :cond_0

    move-object v1, v3

    .line 99
    :goto_0
    return-object v1

    .line 71
    :cond_0
    const/4 v0, 0x1

    .line 72
    .local v0, ret:Z
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->$SWITCH_TABLE$com$slideme$sam$manager$model$appstore$tasks$AsynchronuousTask$Priority()[I

    move-result-object v1

    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->priority:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    invoke-virtual {v2}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 91
    const/4 v0, 0x0

    .line 94
    :goto_1
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v1, v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->stackMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->stackMonitor:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 94
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 97
    if-eqz v0, :cond_1

    move-object v1, p0

    .line 98
    goto :goto_0

    .line 74
    :pswitch_0
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v1, v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->executionRequests:Ljava/util/LinkedList;

    monitor-enter v1

    .line 75
    :try_start_1
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->executionRequests:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 74
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :pswitch_1
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v1, v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->executionRequests:Ljava/util/LinkedList;

    monitor-enter v1

    .line 79
    :try_start_2
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->executionRequests:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 78
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 74
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 83
    :pswitch_2
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v1, v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->executionRequests:Ljava/util/LinkedList;

    monitor-enter v1

    .line 84
    :try_start_4
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->executionRequests:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 83
    monitor-exit v1

    goto :goto_1

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 88
    :pswitch_3
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->manager:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v1, v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->dedicatedExecutors:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->worker:Ljava/lang/Runnable;

    invoke-interface {v1, v2, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->executionMonitor:Ljava/util/concurrent/Future;

    goto :goto_1

    .line 94
    :catchall_3
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2

    :cond_1
    move-object v1, v3

    .line 99
    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Task{priority="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->priority:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->state:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    const-string v1, ", oldState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->oldState:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    const-string v1, ", effort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->effort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    const-string v1, ", effortElapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->effortElapsed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    const-string v1, ", observers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->observers:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract uninit()Z
.end method

.method public unregisterObserver(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->observers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->observers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 299
    :cond_0
    return-void
.end method

.method protected updateState(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 269
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->state:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    iput-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->oldState:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    .line 270
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->state:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    .line 271
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->observers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    return-void

    .line 271
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;

    .line 272
    .local v0, o:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->oldState:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-interface {v0, v2, p1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;->onStateChanged(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V

    goto :goto_0
.end method

.method public waitFinish()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->executionMonitor:Ljava/util/concurrent/Future;

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->taskMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->taskMonitor:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->waitFinish()V

    .line 116
    :goto_0
    return-void

    .line 105
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 111
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->executionMonitor:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract work()Z
.end method
