.class Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$5;
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->finish()V

    .line 128
    return-void
.end method
