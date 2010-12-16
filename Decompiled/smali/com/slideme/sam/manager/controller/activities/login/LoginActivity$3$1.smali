.class Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;

.field private final synthetic val$password:Landroid/widget/TextView;

.field private final synthetic val$username:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->this$1:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->val$username:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->val$password:Landroid/widget/TextView;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 97
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    move-result-object v1

    .line 98
    .local v1, session:Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;
    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getUser()Lcom/slideme/sam/manager/model/domain/user/User;

    move-result-object v0

    .line 99
    .local v0, samUser:Lcom/slideme/sam/manager/model/domain/user/User;
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->val$username:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/slideme/sam/manager/model/domain/user/User;->setUsername(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->val$password:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/slideme/sam/manager/model/domain/user/User;->setPassword(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->isAuthorized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->this$1:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;)Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->setResult(I)V

    .line 104
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->this$1:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;)Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->loginEventhandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->this$1:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;)Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->finish()V

    .line 120
    return-void

    .line 106
    :cond_0
    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->login()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->login()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 107
    :cond_1
    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->isAuthorized()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->this$1:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;)Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->loginEventhandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->this$1:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;)Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->setResult(I)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->this$1:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;)Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->loginEventhandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->this$1:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;)Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->setResult(I)V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->this$1:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;)Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->loginEventhandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;->this$1:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;)Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->setResult(I)V

    goto :goto_0
.end method
