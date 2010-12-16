.class Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2$1;
.super Ljava/lang/Object;
.source "BundleDisplayActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2$1;->this$2:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 306
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 307
    .local v1, bm:Landroid/graphics/drawable/BitmapDrawable;
    const/16 v2, 0x77

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 309
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2$1;->this$2:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3$2;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    move-result-object v2

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;)Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->access$7(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Landroid/widget/ImageSwitcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 313
    return-void
.end method
