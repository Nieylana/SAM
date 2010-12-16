.class Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$13;
.super Ljava/lang/Object;
.source "BundleDisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setBar(Landroid/content/pm/ActivityInfo;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Z)V
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$13;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$13;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 632
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .local v0, deleteIntent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$13;->val$app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v2, v2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 634
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$13;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 635
    return-void
.end method
