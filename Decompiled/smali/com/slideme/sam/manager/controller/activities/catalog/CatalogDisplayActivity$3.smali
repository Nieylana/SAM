.class Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;
.super Landroid/os/Handler;
.source "CatalogDisplayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;
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
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    .line 205
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

    .line 208
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 234
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 213
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;

    if-eqz v1, :cond_1

    .line 214
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;

    .line 215
    .local v0, ce:Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-virtual {v3, v5}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->getString(I)Ljava/lang/String;

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

    goto :goto_0

    .line 217
    .end local v0           #ce:Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;
    :cond_1
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-virtual {v2, v5}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 221
    :pswitch_3
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->access$2(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->notifyDataSetChanged()V

    .line 222
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->access$3(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 225
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->access$3(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 228
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-static {v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->access$2(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 208
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
