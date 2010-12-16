.class Lcom/slideme/sam/manager/controller/activities/notification/SortDialog$1;
.super Ljava/lang/Object;
.source "SortDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->init()V
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
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog$1;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
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
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog$1;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;

    iget-object v1, v1, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 81
    .local v0, position:I
    packed-switch v0, :pswitch_data_0

    .line 89
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog$1;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;

    iget-object v1, v1, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->asc:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 90
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog$1;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;

    iget-object v1, v1, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->desc:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 93
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog$1;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;

    iget-object v1, v1, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->asc:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 85
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog$1;->this$0:Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;

    iget-object v1, v1, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;->desc:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
