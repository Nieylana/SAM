.class Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$12;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$12;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$12;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$12;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    const v2, 0x7f080079

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 557
    return-void
.end method
