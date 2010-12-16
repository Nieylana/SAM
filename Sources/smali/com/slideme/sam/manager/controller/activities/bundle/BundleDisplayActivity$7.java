.class Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;
.super Ljava/lang/Object;
.source "BundleDisplayActivity.java"

# interfaces
.implements Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

.field private final synthetic val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

.field private final synthetic val$cancel:Landroid/widget/Button;

.field private final synthetic val$isPackagePresent:Ljava/lang/Boolean;

.field private final synthetic val$mainActivityInfo:Landroid/content/pm/ActivityInfo;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Landroid/widget/Button;Landroid/content/pm/ActivityInfo;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->val$cancel:Landroid/widget/Button;

    iput-object p3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->val$mainActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object p4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iput-object p5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->val$isPackagePresent:Ljava/lang/Boolean;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;
    .locals 1
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    return-object v0
.end method


# virtual methods
.method public effortUpdate(I)V
    .locals 0
    .parameter "effortElapsed"

    .prologue
    .line 493
    return-void
.end method

.method public onStateChanged(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;)V
    .locals 8
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 464
    iget-object v7, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    new-instance v0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->val$cancel:Landroid/widget/Button;

    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->val$mainActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v6, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;->val$isPackagePresent:Ljava/lang/Boolean;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7$1;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$State;Landroid/widget/Button;Landroid/content/pm/ActivityInfo;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Ljava/lang/Boolean;)V

    invoke-virtual {v7, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 489
    return-void
.end method

.method public reviewEstimatedEffort(I)V
    .locals 0
    .parameter "totalEffort"

    .prologue
    .line 497
    return-void
.end method
