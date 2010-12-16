.class Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;
.super Landroid/os/Handler;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    .line 893
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const v5, 0x7f0800cf

    const/4 v4, 0x0

    .line 895
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 917
    :goto_0
    :pswitch_0
    return-void

    .line 897
    :pswitch_1
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1, v4}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setResult(I)V

    .line 898
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 899
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->finish()V

    goto :goto_0

    .line 902
    :pswitch_2
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1, v4}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setResult(I)V

    .line 903
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;

    if-eqz v1, :cond_0

    .line 904
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;

    .line 905
    .local v0, ce:Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v3, v5}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 908
    .end local v0           #ce:Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;
    :goto_1
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->finish()V

    goto :goto_0

    .line 907
    :cond_0
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v2, v5}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 912
    :pswitch_3
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setResult(I)V

    .line 914
    :pswitch_4
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    iget-object v1, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->adapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 895
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
