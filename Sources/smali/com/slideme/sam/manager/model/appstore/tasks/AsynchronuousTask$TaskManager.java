.class public Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;
.super Ljava/lang/Object;
.source "AsynchronuousTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskManager"
.end annotation


# static fields
.field private static final managers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private concurentWorkers:I

.field final dedicatedExecutors:Ljava/util/concurrent/ExecutorService;

.field final executionRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;",
            ">;"
        }
    .end annotation
.end field

.field final executors:Ljava/util/concurrent/ExecutorService;

.field private maxWorkers:I

.field private runner:Ljava/lang/Thread;

.field final stackMonitor:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->managers:Ljava/util/HashMap;

    .line 126
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "maxConcurrentWorkers"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->dedicatedExecutors:Ljava/util/concurrent/ExecutorService;

    .line 130
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->executionRequests:Ljava/util/LinkedList;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->stackMonitor:Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->concurentWorkers:I

    .line 145
    new-instance v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager$1;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager$1;-><init>(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->runner:Ljava/lang/Thread;

    .line 139
    iput p1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->maxWorkers:I

    .line 140
    iget v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->maxWorkers:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->executors:Ljava/util/concurrent/ExecutorService;

    .line 141
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->runner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 142
    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;)I
    .locals 1
    .parameter

    .prologue
    .line 134
    iget v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->concurentWorkers:I

    return v0
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput p1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->concurentWorkers:I

    return-void
.end method

.method static synthetic access$2(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;)I
    .locals 1
    .parameter

    .prologue
    .line 136
    iget v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->maxWorkers:I

    return v0
.end method

.method public static get(Ljava/lang/String;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 173
    sget-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->managers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    return-object p0
.end method

.method public static init(Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "maxConcurrentWorkers"

    .prologue
    .line 169
    sget-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->managers:Ljava/util/HashMap;

    new-instance v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    invoke-direct {v1, p1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public static uninit(Ljava/lang/String;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 178
    sget-object v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->managers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method
