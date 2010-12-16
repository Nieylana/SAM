.class Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$1;
.super Ljava/lang/Object;
.source "CatalogDisplayActivity.java"

# interfaces
.implements Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory",
        "<",
        "Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;",
        ">;"
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(ILcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "i"
    .parameter "app"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/4 v5, 0x0

    .line 57
    if-nez p3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-static {v3}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->access$0(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030010

    invoke-virtual {v3, v4, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    sget-object v4, Lcom/slideme/sam/manager/R$styleable;->Gallery1:[I

    invoke-virtual {v3, v4}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 62
    .local v2, mGalleryItemBackground:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    const v3, 0x7f0a0075

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 65
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    iget-object v4, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->setIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 66
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 68
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setDrawingCacheQuality(I)V

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 70
    return-object p3
.end method

.method public bridge synthetic getView(ILjava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$1;->getView(ILcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
