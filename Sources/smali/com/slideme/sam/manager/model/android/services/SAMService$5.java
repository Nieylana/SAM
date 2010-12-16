.class Lcom/slideme/sam/manager/model/android/services/SAMService$5;
.super Ljava/lang/Object;
.source "SAMService.java"

# interfaces
.implements Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/model/android/services/SAMService;->updateCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

.field private final synthetic val$sam:Lcom/slideme/sam/manager/SAM;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/model/android/services/SAMService;Lcom/slideme/sam/manager/SAM;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$5;->this$0:Lcom/slideme/sam/manager/model/android/services/SAMService;

    iput-object p2, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$5;->val$sam:Lcom/slideme/sam/manager/SAM;

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIds()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1008
    iget-object v4, p0, Lcom/slideme/sam/manager/model/android/services/SAMService$5;->val$sam:Lcom/slideme/sam/manager/SAM;

    iget-object v4, v4, Lcom/slideme/sam/manager/SAM;->mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;

    invoke-virtual {v4}, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->fetchAllUpdateIds()Landroid/database/Cursor;

    move-result-object v0

    .line 1009
    .local v0, c:Landroid/database/Cursor;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1012
    .local v3, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1013
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1015
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

    .line 1016
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1017
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 1014
    if-nez v4, :cond_0

    .line 1018
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 1021
    .local v1, ids:[Ljava/lang/String;
    array-length v4, v1

    if-eqz v4, :cond_2

    .line 1025
    invoke-virtual {v3, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1028
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v4, v1

    .line 1034
    .end local v1           #ids:[Ljava/lang/String;
    .end local v2           #s:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1032
    :cond_3
    if-eqz v0, :cond_4

    .line 1033
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1034
    :cond_4
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public onNothingLoaded()V
    .locals 0

    .prologue
    .line 1038
    return-void
.end method
