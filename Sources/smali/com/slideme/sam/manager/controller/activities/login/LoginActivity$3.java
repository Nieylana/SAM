.class Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

.field private final synthetic val$password:Landroid/widget/TextView;

.field private final synthetic val$username:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->val$username:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->val$password:Landroid/widget/TextView;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;)Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->showDialog(I)V

    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->val$username:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;->val$password:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2, v3}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3$1;-><init>(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$3;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method
