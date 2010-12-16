.class Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$2;
.super Ljava/lang/Object;
.source "SdCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialogInterface"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->access$2(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;Z)V

    .line 84
    return-void
.end method
