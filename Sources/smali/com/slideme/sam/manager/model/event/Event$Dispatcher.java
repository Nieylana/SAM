.class public final Lcom/slideme/sam/manager/model/event/Event$Dispatcher;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/event/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;
    }
.end annotation


# static fields
.field private static instance:Lcom/slideme/sam/manager/model/event/Event$Dispatcher;


# instance fields
.field private final notifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    invoke-direct {v0}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;-><init>()V

    sput-object v0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->instance:Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->notifiers:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->instance:Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    return-object v0
.end method


# virtual methods
.method public attachNotifier(Lcom/slideme/sam/manager/model/event/Event$Notifier;I)V
    .locals 5
    .parameter "notifier"
    .parameter "code"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->detachNotifier(Lcom/slideme/sam/manager/model/event/Event$Notifier;)V

    .line 63
    if-eqz p1, :cond_1

    .line 64
    iget-object v2, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->notifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    new-instance v0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;

    invoke-interface {p1}, Lcom/slideme/sam/manager/model/event/Event$Notifier;->getContext()I

    move-result v2

    invoke-direct {v0, v2, p2}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;-><init>(II)V

    .line 75
    .local v0, dh:Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;
    invoke-static {v0}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->access$2(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v2, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->notifiers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v0           #dh:Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;

    .line 65
    .local v1, h:Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;
    invoke-static {v1}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->access$0(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)I

    move-result v3

    invoke-interface {p1}, Lcom/slideme/sam/manager/model/event/Event$Notifier;->getContext()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-static {v1}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->access$1(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 66
    invoke-static {v1}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->access$2(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {v1}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->access$1(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)I

    move-result v2

    invoke-static {v1}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->access$3(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v1}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->access$4(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lcom/slideme/sam/manager/model/event/Event$Notifier;->notifyEvent(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public detachNotifier(Lcom/slideme/sam/manager/model/event/Event$Notifier;)V
    .locals 4
    .parameter "notifier"

    .prologue
    .line 81
    iget-object v1, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->notifiers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    return-void

    .line 81
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;

    .line 82
    .local v0, h:Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;
    invoke-static {v0}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->access$0(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)I

    move-result v2

    invoke-interface {p1}, Lcom/slideme/sam/manager/model/event/Event$Notifier;->getContext()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 84
    invoke-static {v0}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->access$2(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dispatchEvent(IIILjava/lang/Object;)V
    .locals 5
    .parameter "context"
    .parameter "requestCode"
    .parameter "eventCode"
    .parameter "eventData"

    .prologue
    .line 95
    iget-object v2, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->notifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    return-void

    .line 95
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;

    .line 98
    .local v0, df:Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;
    invoke-static {v0}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->access$0(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 100
    invoke-static {v0}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->access$2(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/slideme/sam/manager/model/event/Event$Notifier;

    .line 102
    .local v1, n:Lcom/slideme/sam/manager/model/event/Event$Notifier;
    invoke-static {v0}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->access$1(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 103
    invoke-interface {v1, p2, p3, p4}, Lcom/slideme/sam/manager/model/event/Event$Notifier;->notifyEvent(IILjava/lang/Object;)V

    goto :goto_0
.end method
