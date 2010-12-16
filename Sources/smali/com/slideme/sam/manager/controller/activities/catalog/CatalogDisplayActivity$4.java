.class Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$4;
.super Ljava/lang/Object;
.source "CatalogDisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    const v3, 0x7f0800d1

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    const-class v2, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-virtual {v1, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$4;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->finish()V

    .line 119
    return-void
.end method
