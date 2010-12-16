.class Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$3;
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIds()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 159
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-static {v4}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v4

    iget-object v4, v4, Lcom/slideme/sam/manager/SAM;->mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;

    invoke-virtual {v4}, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->fetchAllDownloadedIds()Landroid/database/Cursor;

    move-result-object v0

    .line 160
    .local v0, c:Landroid/database/Cursor;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 163
    .local v3, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    :cond_0
    const-string v4, "bundleId"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, s:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 165
    if-nez v4, :cond_0

    .line 169
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 172
    .local v1, ids:[Ljava/lang/String;
    array-length v4, v1

    if-eqz v4, :cond_2

    .line 176
    invoke-virtual {v3, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 179
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v4, v1

    .line 185
    .end local v1           #ids:[Ljava/lang/String;
    .end local v2           #s:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 183
    :cond_3
    if-eqz v0, :cond_4

    .line 184
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_4
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public onNothingLoaded()V
    .locals 3

    .prologue
    .line 189
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->access$2(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    .line 190
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 191
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MY_DOWNLOADS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    const-class v2, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->finish()V

    .line 195
    return-void
.end method
