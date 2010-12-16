.class Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$5;
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public onNothingLoaded()V
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->access$2(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    .line 276
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 277
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    const-class v2, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 278
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->finish()V

    .line 280
    return-void
.end method
