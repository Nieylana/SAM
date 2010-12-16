.class Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$12;
.super Ljava/lang/Object;
.source "BundleDisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setBar(Landroid/content/pm/ActivityInfo;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

.field private final synthetic val$info:Landroid/content/pm/ActivityInfo;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$12;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$12;->val$info:Landroid/content/pm/ActivityInfo;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 619
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 620
    .local v0, openintent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$12;->val$info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$12;->val$info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$12;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-virtual {v1, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->startActivity(Landroid/content/Intent;)V

    .line 622
    return-void
.end method
