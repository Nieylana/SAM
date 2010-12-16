.class public Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$MyIntComparable;
.super Ljava/lang/Object;
.source "Catalog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyIntComparable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;


# direct methods
.method public constructor <init>(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$MyIntComparable;->this$0:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;)I
    .locals 2
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 358
    iget-object v0, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;->count:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;->count:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;->count:Ljava/lang/String;

    iget-object v1, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;->count:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;

    check-cast p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;

    invoke-virtual {p0, p1, p2}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$MyIntComparable;->compare(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;)I

    move-result v0

    return v0
.end method
