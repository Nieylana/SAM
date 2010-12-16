.class Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$4;
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 110
    return-void
.end method
