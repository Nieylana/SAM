.class Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->setIcon(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;

.field private final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$1;->val$icon:Landroid/widget/ImageView;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$1;->val$icon:Landroid/widget/ImageView;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$1;->val$icon:Landroid/widget/ImageView;

    const v2, 0x7f02001f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    monitor-exit v0

    .line 286
    return-void

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
