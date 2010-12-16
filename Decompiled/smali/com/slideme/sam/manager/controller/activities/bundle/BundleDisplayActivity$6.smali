.class Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$6;
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$6;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$6;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$6;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$8(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/SAM;->getService()Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$6;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/android/services/SAMService;->cancelDownload(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    .line 459
    return-void
.end method
