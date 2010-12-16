.class Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;
.super Ljava/lang/Object;
.source "AsynchronuousTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 17
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    iget-object v0, v0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->taskMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    iget-object v1, v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->taskMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    invoke-static {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->access$0(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    move-result-object v0

    invoke-static {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->access$0(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->access$1(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;I)V

    .line 23
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->INITIALIZING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->updateState(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V

    .line 26
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->init()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->WORKING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->updateState(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V

    .line 30
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->work()Z

    move-result v0

    if-nez v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ERROR:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->updateState(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V

    .line 40
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->uninit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ERROR:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->updateState(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    invoke-static {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->access$0(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;

    move-result-object v0

    invoke-static {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->access$0(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;->access$1(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$TaskManager;I)V

    .line 46
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->notifyStack()V

    .line 47
    return-void

    .line 17
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    invoke-static {v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->access$1(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;)Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    move-result-object v0

    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->WORKING:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->COMPLETED:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->updateState(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V

    goto :goto_0

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$1;->this$0:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    sget-object v1, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;->ERROR:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->updateState(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V

    goto :goto_0
.end method
