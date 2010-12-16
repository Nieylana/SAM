.class Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$3;
.super Ljava/lang/Object;
.source "SdCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 95
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->readApksFromSDCard()V

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0800c2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 100
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
