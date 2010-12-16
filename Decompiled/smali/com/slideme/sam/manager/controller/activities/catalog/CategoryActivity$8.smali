.class Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$8;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$8;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIds()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 328
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$8;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-static {v4}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->access$3(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/slideme/sam/manager/model/appstore/services/search/solr/Search;->queryForBundleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, s:[Ljava/lang/String;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 331
    .local v3, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 332
    array-length v4, v2

    :goto_0
    if-lt v5, v4, :cond_0

    .line 336
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 337
    .local v0, ids:[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object v4, v0

    .line 343
    .end local v0           #ids:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 332
    :cond_0
    aget-object v1, v2, v5

    .line 334
    .local v1, item:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 343
    .end local v1           #item:Ljava/lang/String;
    :cond_2
    new-array v4, v5, [Ljava/lang/String;

    goto :goto_1
.end method

.method public onNothingLoaded()V
    .locals 3

    .prologue
    .line 347
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$8;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->access$2(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    .line 348
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$8;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 349
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$8;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    const-class v2, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 350
    const-string v1, "query"

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$8;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->access$3(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$8;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->access$4(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "q"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const-string v1, "display"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$8;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 354
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$8;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->finish()V

    .line 355
    return-void
.end method
