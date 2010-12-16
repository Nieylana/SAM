.class public Lcom/slideme/sam/manager/view/adapters/SamListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SamListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private count:I

.field private final factory:Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;

.field protected listContainer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    .line 13
    .local p0, this:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;,"Lcom/slideme/sam/manager/view/adapters/SamListAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->count:I

    .line 14
    iput-object p1, p0, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->factory:Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;

    .line 15
    if-nez p1, :cond_0

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    .local p0, this:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;,"Lcom/slideme/sam/manager/view/adapters/SamListAdapter<TT;>;"
    iget v0, p0, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->count:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;,"Lcom/slideme/sam/manager/view/adapters/SamListAdapter<TT;>;"
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->listContainer:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->listContainer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 39
    .local p0, this:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;,"Lcom/slideme/sam/manager/view/adapters/SamListAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 43
    .local p0, this:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;,"Lcom/slideme/sam/manager/view/adapters/SamListAdapter<TT;>;"
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->factory:Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;

    invoke-virtual {p0, p1}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;->getView(ILjava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 47
    .local p0, this:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;,"Lcom/slideme/sam/manager/view/adapters/SamListAdapter<TT;>;"
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->listContainer:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->listContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->count:I

    .line 48
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 49
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContainer(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;,"Lcom/slideme/sam/manager/view/adapters/SamListAdapter<TT;>;"
    .local p1, container:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->listContainer:Ljava/util/List;

    .line 26
    invoke-virtual {p0}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->notifyDataSetChanged()V

    .line 27
    return-void
.end method
