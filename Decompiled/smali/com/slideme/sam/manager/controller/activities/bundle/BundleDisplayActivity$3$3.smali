.class Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$3;
.super Ljava/lang/Object;
.source "BundleDisplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$3;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 327
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$3;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$5(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Z)V

    .line 328
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$3;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$3;->this$1:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v1

    const v2, 0x7f0a0029

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 330
    .local v0, g:Landroid/widget/Gallery;
    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 331
    return-void
.end method
