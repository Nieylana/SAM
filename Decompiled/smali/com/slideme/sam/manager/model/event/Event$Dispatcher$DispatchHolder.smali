.class final Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/event/Event$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DispatchHolder"
.end annotation


# instance fields
.field private final context:I

.field private final lastEvent:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final lastEventData:Ljava/util/concurrent/atomic/AtomicReference;

.field private final notifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/slideme/sam/manager/model/event/Event$Notifier;",
            ">;"
        }
    .end annotation
.end field

.field private final request:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "context"
    .parameter "request"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->notifiers:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->lastEvent:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->lastEventData:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    iput p1, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->context:I

    .line 46
    iput p2, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->request:I

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->context:I

    return v0
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->request:I

    return v0
.end method

.method static synthetic access$2(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->notifiers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->lastEvent:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$4(Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/slideme/sam/manager/model/event/Event$Dispatcher$DispatchHolder;->lastEventData:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method
