.class Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session$1;
.super Ljava/lang/Thread;
.source "Rest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->notify(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session$1;->this$1:Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    iput-object p2, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session$1;->val$url:Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&sessid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session$1;->this$1:Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->access$0(Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/slideme/sam/manager/model/data/net/HTTPUtils;->httpGet(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 192
    return-void
.end method
