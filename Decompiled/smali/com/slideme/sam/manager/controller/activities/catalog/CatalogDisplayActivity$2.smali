.class Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$2;
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
        "Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;",
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(ILcom/slideme/sam/manager/model/appstore/catalog/domain/Category;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "i"
    .parameter "category"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 79
    if-nez p3, :cond_0

    .line 80
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->access$0(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 81
    :cond_0
    const v0, 0x7f0a0051

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v1

    iget-object v2, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/SAM;->translateCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v0, 0x7f0a0053

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iget-object v0, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;->count:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
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
    check-cast p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$2;->getView(ILcom/slideme/sam/manager/model/appstore/catalog/domain/Category;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
