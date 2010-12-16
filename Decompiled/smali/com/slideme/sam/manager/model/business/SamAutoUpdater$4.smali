.class Lcom/slideme/sam/manager/model/business/SamAutoUpdater$4;
.super Ljava/lang/Object;
.source "SamAutoUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->createUpdateDialog(Landroid/app/Activity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$4;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    iput-object p2, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$4;->val$activity:Landroid/app/Activity;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$4;->val$activity:Landroid/app/Activity;

    const v2, 0x7f080018

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 114
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$4;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$9(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    .local v0, update:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method
