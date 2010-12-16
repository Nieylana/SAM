.class Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;
.super Ljava/lang/Object;
.source "LogException.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/debug/LogException;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/debug/LogException;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/debug/LogException;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;->this$0:Lcom/slideme/sam/manager/controller/activities/debug/LogException;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;)Lcom/slideme/sam/manager/controller/activities/debug/LogException;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;->this$0:Lcom/slideme/sam/manager/controller/activities/debug/LogException;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 26
    packed-switch p2, :pswitch_data_0

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;->this$0:Lcom/slideme/sam/manager/controller/activities/debug/LogException;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/debug/LogException;->finish()V

    .line 86
    return-void

    .line 28
    :pswitch_0
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1$1;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1$1;-><init>(Lcom/slideme/sam/manager/controller/activities/debug/LogException$1;)V

    .line 78
    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/debug/LogException$1$1;->start()V

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
