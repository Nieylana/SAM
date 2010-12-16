.class Lcom/slideme/sam/manager/controller/activities/installer/Installer$3;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/installer/Installer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$3;->this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "j"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, v:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, installIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$3;->this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;

    invoke-static {v2}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->access$0(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/installer/AppInfo;

    .line 97
    .local v0, ai:Lcom/slideme/sam/manager/model/installer/AppInfo;
    iget-object v2, v0, Lcom/slideme/sam/manager/model/installer/AppInfo;->file:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$3;->this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;

    invoke-virtual {v2, v1}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
