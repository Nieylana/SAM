.class Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$1;
.super Ljava/lang/Thread;
.source "Catalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$1;->this$0:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    .line 154
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$1;->this$0:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-static {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->access$0(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;)V

    .line 157
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$1;->this$0:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->access$1(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;Ljava/lang/Thread;)V

    .line 158
    return-void
.end method
