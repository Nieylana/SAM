.class Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager$1;
.super Ljava/lang/Thread;
.source "AsynchronuousTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager$1;->this$1:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    .line 145
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    :goto_0
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager$1;->this$1:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->executors:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    return-void

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager$1;->this$1:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    invoke-static {v2}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->access$0(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;)I

    move-result v2

    iget-object v3, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager$1;->this$1:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    invoke-static {v3}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->access$2(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;)I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager$1;->this$1:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->executionRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager$1;->this$1:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->executionRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 151
    :try_start_0
    iget-object v3, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager$1;->this$1:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v3, v3, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->executionRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    .line 150
    .local v1, task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager$1;->this$1:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->executors:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->access$2(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->executionMonitor:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 150
    .end local v1           #task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager$1;->this$1:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->stackMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 158
    :try_start_2
    iget-object v3, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager$1;->this$1:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    iget-object v3, v3, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->stackMonitor:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 156
    :goto_1
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 159
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 160
    .local v0, ignored:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method
