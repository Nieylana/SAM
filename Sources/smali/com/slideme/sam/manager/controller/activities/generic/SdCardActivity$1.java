.class Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$1;
.super Landroid/os/Handler;
.source "SdCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    .line 184
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->access$0(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 188
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 190
    :pswitch_0
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    const-class v2, Lcom/slideme/sam/manager/controller/activities/installer/Installer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-virtual {v1, v0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->finish()V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
