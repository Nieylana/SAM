.class Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$2;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Filter;


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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Z
    .locals 2
    .parameter "app"

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->access$1(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)Lcom/slideme/sam/manager/SAM;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/slideme/sam/manager/SAM;->detectInstalledApplication(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;ZZ)Z

    move-result v0

    return v0
.end method
