.class Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$1;
.super Landroid/os/Handler;
.source "ProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->setResult(I)V

    .line 76
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->finish()V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->setResult(I)V

    .line 80
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->finish()V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->setResult(I)V

    .line 84
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->finish()V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
