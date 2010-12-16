.class Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$1;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    .line 29
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 32
    :try_start_0
    invoke-static {}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->access$0()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 51
    .end local p0
    :goto_1
    return-void

    .line 37
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    const v3, 0x7f08006e

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    const v3, 0x7f0a0086

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 42
    .restart local p0
    :pswitch_1
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    .line 43
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    const v2, 0x7f080075

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 46
    :pswitch_2
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    .line 47
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
