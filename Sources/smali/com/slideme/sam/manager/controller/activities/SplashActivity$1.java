.class Lcom/slideme/sam/manager/controller/activities/SplashActivity$1;
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/SplashActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 86
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/SplashActivity;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->dismissDialog(I)V

    .line 87
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/SplashActivity;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->launch(Z)V

    .line 88
    return-void
.end method
