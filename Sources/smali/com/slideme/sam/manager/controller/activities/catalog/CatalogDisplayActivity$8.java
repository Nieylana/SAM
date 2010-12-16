.class Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$8;
.super Ljava/lang/Object;
.source "CatalogDisplayActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->setupGalleryAndListViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$8;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "j"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, v:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    check-cast v3, Landroid/widget/Adapter;

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;

    .line 356
    .local v0, c:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;
    iget-object v1, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;->name:Ljava/lang/String;

    .line 358
    .local v1, category:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 359
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$8;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    const-class v4, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 360
    const-string v3, "CATEGORY"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$8;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-virtual {v3, v2}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->startActivity(Landroid/content/Intent;)V

    .line 362
    return-void
.end method
