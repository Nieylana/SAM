.class Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$10;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->handleUpdateAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$10;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Z
    .locals 4
    .parameter "app"

    .prologue
    .line 476
    iget-object v1, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$10;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    iget-object v1, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->packs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 485
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 477
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 478
    .local v0, p:Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    const/4 v1, 0x1

    goto :goto_0
.end method
