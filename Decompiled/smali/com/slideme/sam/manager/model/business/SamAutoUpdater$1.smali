.class Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;
.super Landroid/os/Handler;
.source "SamAutoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/business/SamAutoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    .line 129
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 132
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 134
    :sswitch_0
    iget-object v1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$0(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$0(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 154
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$1(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$1(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 142
    :sswitch_2
    iget-object v1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$2(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$2(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 146
    :sswitch_3
    iget-object v1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$3(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$3(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 150
    :sswitch_4
    iget-object v1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$4(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$1;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$4(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 132
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
    .end sparse-switch
.end method
