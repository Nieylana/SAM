.class Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$5;
.super Ljava/lang/Object;
.source "BundleDisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$5;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v0, i:Landroid/content/Intent;
    const-string v1, "APPLICATION"

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$5;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 437
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    const-class v2, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 438
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-virtual {v1, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->startActivity(Landroid/content/Intent;)V

    .line 439
    return-void
.end method
