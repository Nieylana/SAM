.class Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$1;
.super Ljava/lang/Object;
.source "BundleDisplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    :cond_0
    return-void
.end method
