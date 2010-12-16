.class Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;->onStateChanged(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;

.field private final synthetic val$icon:Landroid/widget/ImageView;

.field private final synthetic val$iconBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2$1;->this$1:Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2$1;->val$icon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2$1;->val$iconBitmap:Landroid/graphics/Bitmap;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2$1;->val$icon:Landroid/widget/ImageView;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2$1;->val$icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2$1;->val$iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    monitor-exit v0

    .line 308
    return-void

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
