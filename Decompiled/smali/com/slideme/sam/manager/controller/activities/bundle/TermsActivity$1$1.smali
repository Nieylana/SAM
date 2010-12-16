.class Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$1;
.super Ljava/lang/Object;
.source "TermsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/SAM;->mkDirs()V

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v1

    const-class v2, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1$1;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$1;)Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 91
    return-void
.end method
