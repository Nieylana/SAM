.class Lcom/slideme/sam/manager/model/android/services/SAMService$2;
.super Ljava/lang/Thread;
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
    iput-object p1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$2;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    .line 131
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 141
    .local v1, app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$2;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {v5}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$6(Lcom/slideme/sam/manager/model/android/services/SAMService;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_1
    if-eqz v1, :cond_0

    .line 158
    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$2;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {v5}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$1(Lcom/slideme/sam/manager/model/android/services/SAMService;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v6, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 161
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v4, installIntent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v2, b:Landroid/os/Bundle;
    const-string v5, "APPLICATION"

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 167
    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$2;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    const-class v6, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 168
    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getInstance()Lcom/slideme/sam/manager/SAM;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/slideme/sam/manager/SAM;->startActivity(Landroid/content/Intent;)V

    .line 173
    iget-object v5, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$2;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-static {v5}, Lcom/slideme/sam/manager/model/android/services/SAMService;->access$7(Lcom/slideme/sam/manager/model/android/services/SAMService;)V

    goto :goto_0

    .line 143
    .end local v2           #b:Landroid/os/Bundle;
    .end local v4           #installIntent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 144
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
