.class Lcom/slideme/sam/manager/model/android/services/SAMService$1;
.super Ljava/util/TimerTask;
.source "SAMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/model/android/services/SAMService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/model/android/services/SAMService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$1;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    .line 121
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$1;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {v0}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$5(Lcom/slideme/sam/manager/model/android/services/SAMService;)V

    .line 125
    return-void
.end method
