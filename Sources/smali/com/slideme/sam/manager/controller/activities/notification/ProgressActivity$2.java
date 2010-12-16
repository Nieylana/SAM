.class Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$2;
.super Ljava/lang/Object;
.source "ProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialogInterface"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->setResult(I)V

    .line 30
    return-void
.end method
