.class Lcom/slideme/sam/manager/controller/activities/SplashActivity$3;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/SplashActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/SplashActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/SplashActivity;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/SplashActivity;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/SplashActivity;

    const v3, 0x7f0800c2

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/SplashActivity;

    const-class v2, Lcom/slideme/sam/manager/controller/activities/SplashActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/SplashActivity;

    invoke-virtual {v1, v0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 114
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/SplashActivity;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->finish()V

    .line 115
    return-void
.end method
